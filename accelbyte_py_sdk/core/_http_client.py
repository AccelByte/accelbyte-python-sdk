import json
import logging
from abc import ABC, abstractmethod
from typing import Any, Optional, Tuple, Union

import httpx
import requests

from ._header import Header
from ._http_response import HttpResponse
from ._operation import Operation
from ._utils import create_curl_request

_LOGGER = logging.getLogger("accelbyte_py_sdk.http")

# NOTE(elmer): convert into a class if needed
HttpRawResponse = Tuple[int, str, Any]  # code, content-type, content


class HttpClient(ABC):

    # noinspection PyMethodMayBeStatic
    def is_async_compatible(self) -> bool:
        return False

    @abstractmethod
    def create_request(
            self,
            operation: Operation,
            base_url: Union[None, str] = None,
            headers: Union[None, Header] = None,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        pass

    @abstractmethod
    def send_request(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        pass

    async def send_request_async(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        if not self.is_async_compatible():
            return None, HttpResponse.create_error(400, "HTTP client is not async compatible.")
        raise NotImplementedError

    @abstractmethod
    def handle_response(
            self,
            raw_response: Any,
            **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        pass

    def run_request(
            self,
            operation: Operation,
            base_url: Union[None, str] = None,
            headers: Union[None, Header] = None,
            **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        request, error = self.create_request(operation, base_url, headers, **kwargs)
        if error:
            return None, error

        raw_response, error = self.send_request(request, **kwargs)
        if error:
            return None, error

        response, error = self.handle_response(raw_response, **kwargs)
        if error:
            return None, error

        return response, None


# TODO(elmer): move to a separate file once it gets too big
class RequestsHttpClient(HttpClient):

    def __init__(self, allow_redirects: bool = True):
        self.allow_redirects = allow_redirects
        self.session = requests.Session()

    def create_request(
            self,
            operation: Operation,
            base_url: Union[None, str] = None,
            headers: Union[None, Header] = None,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        method, url, headers, files, data, json_ = convert_operation(operation, base_url, headers)

        prepared_request = requests.Request(
            method=method,
            url=url,
            headers=headers,
            files=files,
            data=data,
            json=json_,
        ).prepare()

        return prepared_request, None

    def send_request(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        if "allow_redirects" not in kwargs:
            kwargs["allow_redirects"] = self.allow_redirects
        _LOGGER.debug(RequestsHttpClient.convert_to_curl(request))
        try:
            raw_response = self.session.send(request, **kwargs)
        except requests.exceptions.ConnectionError as e:
            _LOGGER.error(str(e))
            return None, HttpResponse.create_connection_error()
        return raw_response, None

    def handle_response(
            self,
            raw_response: requests.Response,
            **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        status_code = raw_response.status_code
        if 400 <= status_code <= 599:
            _LOGGER.error(f"[{status_code}] {raw_response.text}")

        if raw_response.is_redirect:
            content_type = "location"
            content = raw_response.headers["location"]
        elif raw_response.history:
            content_type = "location"
            content = None
            history = next(filter(lambda h: "location" in h.headers, raw_response.history))
            if history:
                status_code = history.status_code
                content = history.headers["location"]
            if content is None:
                return None, HttpResponse.create_unhandled_error()
        elif "Content-Type" in raw_response.headers:
            content_type = raw_response.headers["Content-Type"]
            if is_json_mime_type(content_type):
                try:
                    content = raw_response.json()
                    if content is None:
                        _LOGGER.warning(f"Expecting 'application/json' content received null.")
                        content = ""
                except ValueError:
                    content = ""
            elif content_type.startswith("text/"):
                content = raw_response.text
                if content is None:
                    _LOGGER.warning(f"Expecting 'text/*' content received null.")
                    content = ""
            else:
                return None, HttpResponse.create_unhandled_error()
        else:
            content_type = None
            content = None

        return (status_code, content_type, content), None

    @staticmethod
    def convert_to_curl(prepared_request: requests.PreparedRequest) -> str:
        return create_curl_request(
            uri=prepared_request.url,
            method=prepared_request.method,
            headers={k: v for k, v in prepared_request.headers.items()},
            data=prepared_request.body
        )


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

    # noinspection PyMethodMayBeStatic
    def is_async_compatible(self) -> bool:
        return True

    def create_request(
            self,
            operation: Operation,
            base_url: Union[None, str] = None,
            headers: Union[None, Header] = None,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:

        method, url, headers, files, data, json_ = convert_operation(operation, base_url, headers)

        httpx_request = httpx.Request(
            method=method,
            url=url,
            headers=headers,
            files=files,
            data=data,
            json=json_,
        )

        return httpx_request, None

    def send_request(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        _LOGGER.debug(HttpxHttpClient.convert_to_curl(request))
        with httpx.Client(transport=self.transport) as client:
            return client.send(request), None

    async def send_request_async(
            self,
            request: Any,
            **kwargs
    ) -> Tuple[Any, Union[None, HttpResponse]]:
        _LOGGER.debug(HttpxHttpClient.convert_to_curl(request))
        async with httpx.AsyncClient(transport=self.transport_async) as client:
            return await client.send(request), None

    def handle_response(
            self,
            raw_response: httpx.Response,
            **kwargs
    ) -> Tuple[Union[None, HttpRawResponse], Union[None, HttpResponse]]:
        status_code = raw_response.status_code
        if 400 <= status_code <= 599:
            _LOGGER.error(f"[{status_code}] {raw_response.text}")

        if raw_response.is_redirect:
            content_type = "location"
            content = raw_response.headers["location"]
        elif raw_response.history:
            content_type = "location"
            content = None
            history = next(filter(lambda h: "location" in h.headers, raw_response.history))
            if history:
                status_code = history.status_code
                content = history.headers["location"]
            if content is None:
                return None, HttpResponse.create_unhandled_error()
        elif "Content-Type" in raw_response.headers:
            content_type = raw_response.headers["Content-Type"]
            if is_json_mime_type(content_type):
                try:
                    content = raw_response.json()
                    if content is None:
                        _LOGGER.warning(f"Expecting 'application/json' content received null.")
                        content = ""
                except ValueError:
                    content = ""
            elif content_type.startswith("text/"):
                content = raw_response.text
                if content is None:
                    _LOGGER.warning(f"Expecting 'text/*' content received null.")
                    content = ""
            else:
                return None, HttpResponse.create_unhandled_error()
        else:
            content_type = None
            content = None

        return (status_code, content_type, content), None

    @staticmethod
    def convert_to_curl(httpx_request: httpx.Request) -> str:
        return create_curl_request(
            uri=httpx_request.url,
            method=httpx_request.method,
            headers={k: v for k, v in httpx_request.headers.items()},
            data=None
            # data=httpx_request.stream
        )


# TODO(elmer): convert into a dataclass?
def convert_operation(
        operation: Operation,
        base_url: Union[None, str] = None,
        headers: Union[None, Header] = None,
) -> Tuple[
    str,     # method
    str,     # url
    Header,  # headers
    Any,     # files
    Any,     # data
    Any,     # json
]:
    if not operation.is_valid():
        raise Exception("Missing required values.")

    headers = headers if headers is not None else operation.get_headers()

    body_params = operation.get_body_params()
    form_data_params = operation.get_form_data_params()

    content_type = headers.get("Content-Type")

    if body_params:
        if is_json_mime_type(content_type):
            files, data, json_ = None, None, body_params
        else:
            files, data, json_ = None, json.dumps(body_params), None
    else:
        files, data, json_ = None, form_data_params, None

    return operation.method, operation.get_full_url(base_url=base_url), headers, files, data, json_


def is_json_mime_type(mime_type: Optional[str]) -> bool:
    if mime_type is None:
        return False
    split = mime_type.split("/")
    if len(split) != 2:
        _LOGGER.warning(f"Invalid MIME Type: {mime_type}")
        return False
    main, sub = split
    return main == "application" and (sub == "json" or sub.endswith("+json"))
