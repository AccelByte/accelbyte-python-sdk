# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
import asyncio
import logging
import time
from abc import ABC, abstractmethod
from datetime import timedelta
from typing import Any, Callable, Dict, List, Optional, Tuple, Union

import httpx
import requests

from ._http_backoff_policy import HttpBackoffPolicy
from ._http_response import HttpResponse
from ._http_retry_policy import HttpRetryPolicy
from ._proto_http_request import ProtoHttpRequest
from ._proto_http_request import is_json_mime_type
from ._utils import create_curl_request

_LOGGER = logging.getLogger("accelbyte_py_sdk.http")

# NOTE(elmer): convert into a class if needed
HttpRawResponse = Tuple[int, str, Any]  # code, content-type, content


class HttpClient(ABC):

    backoff_policy: Optional[HttpBackoffPolicy] = None
    request_log_formatter: Optional[Callable[[dict], str]] = None
    response_log_formatter: Optional[Callable[[dict], str]] = None
    retry_policy: Optional[HttpRetryPolicy] = None

    # noinspection PyMethodMayBeStatic
    def close(self) -> None:
        pass

    # noinspection PyMethodMayBeStatic
    def is_async_compatible(self) -> bool:
        return False

    @abstractmethod
    def create_request(self, proto: ProtoHttpRequest) -> Any:
        pass

    @abstractmethod
    def send_request(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        pass

    async def send_request_async(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        if not self.is_async_compatible():
            return None, HttpResponse.create_error(
                400, "HTTP client is not async compatible."
            )
        raise NotImplementedError

    @abstractmethod
    def handle_response(
        self, raw_response: Any, **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        pass

    def _log_request(self, request_dict: dict) -> None:
        req_fmt = self.request_log_formatter or format_request_log
        _LOGGER.debug(req_fmt(request_dict))

    def _log_response(self, response_dict: dict):
        res_fmt = self.response_log_formatter or format_response_log
        _LOGGER.debug(res_fmt(response_dict))


class RequestsHttpClient(HttpClient):
    def __init__(self, allow_redirects: bool = True):
        self.allowed_kwarg_keys = {
            "allow_redirects",
            "cert",
            "proxies",
            "stream",
            "timeout",
            "verify",
            "yield_requests",
        }
        self.allow_redirects = allow_redirects
        self.session = requests.Session()

    def close(self) -> None:
        if self.session is not None:
            self.session.close()

    def create_request(self, proto: ProtoHttpRequest) -> Any:
        prepared_request = requests.Request(
            method=proto.method,
            url=proto.url,
            headers=proto.headers,
            files=proto.files,
            data=proto.data,
            json=proto.json_,
        ).prepare()
        return prepared_request

    def send_request(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        if "allow_redirects" not in kwargs:
            kwargs["allow_redirects"] = self.allow_redirects
        return self._send_request_internal(
            request, retry_policy=retry_policy, backoff_policy=backoff_policy, **kwargs
        )

    def _send_request_internal(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Optional[HttpResponse]]:
        # pylint: disable=not-callable
        retry_policy = retry_policy if retry_policy is not None else self.retry_policy
        backoff_policy = (
            backoff_policy if backoff_policy is not None else self.backoff_policy
        )

        attempts = 0
        elapsed = timedelta(0)
        raw_response = None
        error = None
        filtered_kwargs = {
            k: v for k, v in kwargs.items() if k in self.allowed_kwarg_keys
        }
        while True:
            try:
                self.log_request(request)
                raw_response = self.session.send(request, **filtered_kwargs)
            except requests.exceptions.ConnectionError as e:
                _LOGGER.error(str(e))
                error = HttpResponse.create_connection_error()
            if raw_response is not None and raw_response.ok:
                error = None
                break
            if retry_policy is None:
                break
            attempts += 1
            elapsed += (
                raw_response.elapsed if raw_response is not None else timedelta(0)
            )
            should_retry = retry_policy(
                request, raw_response, retries=attempts - 1, elapsed=elapsed, **kwargs
            )
            if not should_retry:
                break
            if backoff_policy:
                sleep_duration = backoff_policy(
                    request,
                    raw_response,
                    retries=attempts - 1,
                    elapsed=elapsed,
                    **kwargs,
                )
                time.sleep(sleep_duration)
                elapsed += timedelta(seconds=sleep_duration)
        return raw_response, error

    def handle_response(
        self, raw_response: requests.Response, **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        http_raw_response, http_response = process_response(
            status_code=raw_response.status_code,
            content_json=lambda: raw_response.json(),
            content_raw=lambda: raw_response.content,
            content_text=lambda: raw_response.text,
            headers=raw_response.headers,
            is_redirect=raw_response.is_redirect,
            history=raw_response.history,
        )
        self.log_response(raw_response)
        return http_raw_response, http_response

    def log_request(self, prepared_request: requests.PreparedRequest) -> None:
        if _LOGGER.isEnabledFor(logging.DEBUG):
            request_dict = RequestsHttpClient.convert_request_to_dict(prepared_request)
            request_dict["timestamp"] = int(time.time())
            self._log_request(request_dict)

    def log_response(self, response: requests.Response) -> None:
        if _LOGGER.isEnabledFor(logging.DEBUG):
            response_dict = RequestsHttpClient.convert_response_to_dict(response)
            response_dict["timestamp"] = int(time.time())
            self._log_response(response_dict)

    @staticmethod
    def convert_to_curl(prepared_request: requests.PreparedRequest) -> str:
        return create_curl_request(
            uri=prepared_request.url,
            method=prepared_request.method,
            headers={k: v for k, v in prepared_request.headers.items()},
            data=prepared_request.body,
        )

    @staticmethod
    def convert_request_to_dict(prepared_request: requests.PreparedRequest) -> dict:
        return {
            "url": prepared_request.url,
            "method": prepared_request.method,
            "headers": {k: v for k, v in prepared_request.headers.items()},
            "data": prepared_request.body,
        }

    @staticmethod
    def convert_response_to_dict(response: requests.Response) -> dict:
        return {
            "url": response.url,
            "status_code": response.status_code,
            "elapsed": response.elapsed.total_seconds(),
            "headers": {k: v for k, v in response.headers.items()},
            "body": response.content,
        }


class HttpxHttpClient(HttpClient):
    def __init__(
        self,
        max_connections: int = 100,
        max_keepalive_connections: int = 20,
    ):
        limits = httpx.Limits(
            max_connections=max_connections,
            max_keepalive_connections=max_keepalive_connections,
        )
        self.transport = httpx.HTTPTransport(
            verify=True,
            cert=None,
            http1=True,
            http2=True,
            limits=limits,
            trust_env=True,
        )
        self.transport_async = httpx.AsyncHTTPTransport(
            verify=True,
            cert=None,
            http1=True,
            http2=False,
            limits=limits,
            trust_env=True,
        )
        self.client = httpx.Client(transport=self.transport)
        self.client_async = httpx.AsyncClient(transport=self.transport_async)

    def close(self) -> None:
        if self.client is not None:
            self.client.close()
        if self.transport is not None:
            self.transport.close()
        if self.client_async is not None:
            _ = asyncio.create_task(self.client_async.aclose())
        if self.transport_async is not None:
            _ = asyncio.create_task(self.transport_async.aclose())

    # noinspection PyMethodMayBeStatic
    def is_async_compatible(self) -> bool:
        return True

    def create_request(self, proto: ProtoHttpRequest) -> Any:
        httpx_request = httpx.Request(
            method=proto.method,
            url=proto.url,
            headers=proto.headers,
            files=proto.files,
            data=proto.data,
            json=proto.json_,
        )
        return httpx_request

    def send_request(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        return self._send_request_internal(
            request, retry_policy=retry_policy, backoff_policy=backoff_policy, **kwargs
        )

    def _send_request_internal(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Optional[HttpResponse]]:
        # pylint: disable=not-callable
        retry_policy = retry_policy if retry_policy is not None else self.retry_policy
        backoff_policy = (
            backoff_policy if backoff_policy is not None else self.backoff_policy
        )

        attempts = 0
        elapsed = timedelta(0)
        error = None
        while True:
            self.log_request(request)
            raw_response = self.client.send(request)
            ok = self.__ok(raw_response)
            if raw_response is not None:
                setattr(raw_response, "ok", ok)
            if ok:
                error = None
                break
            if retry_policy is None:
                break
            attempts += 1
            elapsed += (
                raw_response.elapsed if raw_response is not None else timedelta(0)
            )
            should_retry = retry_policy(
                request, raw_response, retries=attempts - 1, elapsed=elapsed, **kwargs
            )
            if not should_retry:
                break
            if backoff_policy:
                sleep_duration = backoff_policy(
                    request,
                    raw_response,
                    retries=attempts - 1,
                    elapsed=elapsed,
                    **kwargs,
                )
                time.sleep(sleep_duration)
                elapsed += timedelta(seconds=sleep_duration)
        return raw_response, error

    async def send_request_async(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        return await self._send_request_internal_async(
            request, retry_policy=retry_policy, backoff_policy=backoff_policy, **kwargs
        )

    async def _send_request_internal_async(
        self,
        request: Any,
        retry_policy: Optional[HttpRetryPolicy] = None,
        backoff_policy: Optional[HttpBackoffPolicy] = None,
        **kwargs,
    ) -> Tuple[Any, Optional[HttpResponse]]:
        # pylint: disable=not-callable
        retry_policy = retry_policy if retry_policy is not None else self.retry_policy
        backoff_policy = (
            backoff_policy if backoff_policy is not None else self.backoff_policy
        )

        attempts = 0
        elapsed = timedelta(0)
        should_retry = True
        raw_response = None
        error = None
        while True:
            self.log_request(request)
            raw_response = await self.client_async.send(request)
            ok = self.__ok(raw_response)
            if raw_response is not None:
                setattr(raw_response, "ok", ok)
            if ok:
                error = None
                break
            if retry_policy is None:
                should_retry = False
                break
            attempts += 1
            elapsed += (
                raw_response.elapsed if raw_response is not None else timedelta(0)
            )
            should_retry = retry_policy(
                request, raw_response, retries=attempts - 1, elapsed=elapsed
            )
            if not should_retry:
                break
            if backoff_policy:
                sleep_duration = backoff_policy(
                    request,
                    raw_response,
                    retries=attempts - 1,
                    elapsed=elapsed,
                    **kwargs,
                )
                await asyncio.sleep(sleep_duration)
                elapsed += timedelta(seconds=sleep_duration)
        return raw_response, error

    def handle_response(
        self, raw_response: httpx.Response, **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        http_raw_response, http_response = process_response(
            status_code=raw_response.status_code,
            content_json=lambda: raw_response.json(),
            content_raw=lambda: raw_response.content,
            content_text=lambda: raw_response.text,
            headers=raw_response.headers,
            is_redirect=raw_response.is_redirect,
            history=raw_response.history,
        )
        self.log_response(raw_response)
        return http_raw_response, http_response

    def log_request(self, httpx_request: httpx.Request) -> None:
        if _LOGGER.isEnabledFor(logging.DEBUG):
            request_dict = HttpxHttpClient.convert_request_to_dict(httpx_request)
            request_dict["timestamp"] = int(time.time())
            self._log_request(request_dict)

    def log_response(self, httpx_response: httpx.Response) -> None:
        if _LOGGER.isEnabledFor(logging.DEBUG):
            response_dict = HttpxHttpClient.convert_response_to_dict(httpx_response)
            response_dict["timestamp"] = int(time.time())
            self._log_request(response_dict)

    @staticmethod
    def convert_to_curl(httpx_request: httpx.Request) -> str:
        return create_curl_request(
            uri=httpx_request.url,
            method=httpx_request.method,
            headers={k: v for k, v in httpx_request.headers.items()},
            data=httpx_request.content,
        )

    @staticmethod
    def convert_request_to_dict(httpx_request: httpx.Request) -> dict:
        return {
            "url": httpx_request.url,
            "method": httpx_request.method,
            "headers": {k: v for k, v in httpx_request.headers.items()},
            "data": httpx_request.content,
        }

    @staticmethod
    def convert_response_to_dict(httpx_response: httpx.Response) -> dict:
        return {
            "url": httpx_response.url,
            "status_code": httpx_response.status_code,
            "elapsed": httpx_response.elapsed.total_seconds(),
            "headers": {k: v for k, v in httpx_response.headers.items()},
            "body": httpx_response.content,
        }

    @staticmethod
    def __ok(response) -> bool:
        try:
            response.raise_for_status()
        except (RuntimeError, httpx.HTTPStatusError):
            return False
        return True


def format_request_log(request_dict: dict) -> str:
    return str(request_dict)


def format_response_log(response_dict: dict) -> str:
    return str(response_dict)


def process_response(
    status_code: int,
    content_json: Callable[[], Any],
    content_raw: Callable[[], Any],
    content_text: Callable[[], Optional[str]],
    headers: Dict[str, str],
    is_redirect: Optional[bool] = None,
    history: Optional[List[Any]] = None,
) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
    is_redirect = is_redirect if is_redirect is not None else False
    history = history if history is not None else []

    if 400 <= status_code <= 599:
        _LOGGER.error(f"[{status_code}] {str(content_text())}")

    if is_redirect:
        content_type = "location"
        content = headers["Location"]
    elif history:
        temp_status_code: int = status_code
        temp_content: Optional[str] = None
        for h in history:
            if not hasattr(h, "headers"):
                continue
            h_headers = h.headers
            if not isinstance(h_headers, dict):
                continue
            if "Location" not in h_headers:
                continue
            temp_status_code = (
                h.status_code
                if hasattr(h, "status_code") and isinstance(h.status_code, int)
                else status_code
            )
            temp_content = h_headers["Location"]
            break
        if temp_content is None:
            return None, HttpResponse.create_unhandled_error()
        status_code, content_type, content = temp_status_code, "location", temp_content
    elif "Content-Type" in headers:
        content_type = headers.get("Content-Type")
        content_disposition = headers.get("Content-Disposition", "")
        if "filename=" in content_disposition:
            content = content_raw()
        elif is_json_mime_type(content_type):
            try:
                content = content_json()
                if content is None:
                    _LOGGER.warning(
                        "Expecting 'application/json' content received null."
                    )
                    content = ""
            except ValueError:
                content = ""
        elif content_type.startswith("text/"):
            content = content_text()
            if content is None:
                _LOGGER.warning("Expecting 'text/*' content received null.")
                content = ""
        else:
            content = content_raw()
    elif status_code == 201:
        content_type = "location"
        content = headers.get("Location", "")
    else:
        content_type = None
        content = None

    return (status_code, content_type, content), None


HTTP_CLIENTS = [
    RequestsHttpClient,
    HttpxHttpClient,
]

DEFAULT_HTTP_CLIENT = RequestsHttpClient
