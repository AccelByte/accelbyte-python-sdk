# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

import logging

from os import PathLike as OSPathLike
from typing import Any, Dict, Iterable, Optional, Protocol, Set, Tuple

from ._config_repository import ConfigRepository, CONFIG_REPOS, DEFAULT_CONFIG_REPO
from ._http_client import HttpClient, HTTP_CLIENTS, DEFAULT_HTTP_CLIENT
from ._http_response import HttpResponse
from ._operation import Operation
from ._proto_http_request import ProtoHttpRequest, create_proto_from_operation
from ._token_repository import TokenRepository, TOKEN_REPOS, DEFAULT_TOKEN_REPO
from ._utils import (
    add_buffered_file_handler_to_logger,
    get_query_from_http_redirect_response,
)


class OperationPreprocessor(Protocol):
    def __call__(
        self, operation: Operation, sdk: AccelByteSDK, *args, **kwargs
    ) -> Operation:
        ...


class RequestPreprocessor(Protocol):
    def __call__(
        self, proto: ProtoHttpRequest, sdk: AccelByteSDK, *args, **kwargs
    ) -> ProtoHttpRequest:
        ...


class ResponsePreprocessor(Protocol):
    def __call__(
        self, response: Any, operation: Operation, sdk: AccelByteSDK, *args, **kwargs
    ) -> Tuple[Any, Optional[HttpResponse]]:
        ...


def extract_redirect_query(
    response: Any, operation: Operation, sdk: AccelByteSDK
) -> Tuple[Any, Optional[HttpResponse]]:
    if (
        isinstance(response, HttpResponse)
        and operation.has_redirects()
        and operation.location_query
    ):
        response, error = get_query_from_http_redirect_response(
            response, operation.location_query
        )
        if error:
            return None, error

    return response, None


class AccelByteSDK:
    LOGGER_NAME: str = "accelbyte_py_sdk"

    def __init__(self):
        self._is_initialized: bool = False
        self._logger_names: Set[str] = {AccelByteSDK.LOGGER_NAME}

        self._config_repository: Optional[ConfigRepository] = None
        self._token_repository: Optional[TokenRepository] = None
        self._http_client: Optional[HttpClient] = None

        self.logger = logging.getLogger(AccelByteSDK.LOGGER_NAME)
        self.operation_preprocessors: Dict[str, OperationPreprocessor] = {}
        self.request_preprocessors: Dict[str, RequestPreprocessor] = {}
        self.response_preprocessors: Dict[str, ResponsePreprocessor] = {
            "extract_redirect_query": extract_redirect_query
        }

    # region Lifecycle

    def is_initialized(self) -> bool:
        return self._is_initialized

    def initialize(
        self,
        /,
        *,
        options: Optional[Dict[str, Any]] = None,
    ) -> None:
        """Initializes the AccelByte Python SDK.

        Args:
            options (dict): Options used by the SDK. It can contain any of the following:
             -- config (Optional[Union[str, Type[ConfigRepository]]]): Config Repository to use.
             -- config_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Config Repository parameters.
             -- token (Optional[Union[str, Type[TokenRepository]]]): Token Repository to use.
             -- token_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Token Repository parameters.
             -- http (Optional[Union[str, Type[HttpClient]]]): Http Client to use.
             -- http_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Http Client parameters.
             -- log_files (Optional[Dict[str, Union[str, os.PathLike, dict]]]): Log files.
        """
        options = options if options is not None else {}

        if self.is_initialized():
            self.logger.warning("Already initialized.")
            return

        # config repository

        if "config" in options:
            config_repo = options.get("config")
            if isinstance(config_repo, str):
                config_params = options.get("config_params")
                (
                    is_config_params_valid,
                    config_args,
                    config_kwargs,
                ) = self.__is_valid_options_params(config_params)
                if not is_config_params_valid:
                    raise ValueError(
                        "Config params must be a Tuple[List[Any], Dict[str, Any]]."
                    )
                config_impl = next(
                    (impl for impl in CONFIG_REPOS if impl.__name__ == config_repo),
                    None,
                )
                if config_impl is None:
                    raise ValueError(
                        f"Config repository '{config_repo}' not recognized."
                    )
                config_repo = config_impl(*config_args, **config_kwargs)
        else:
            config_repo = DEFAULT_CONFIG_REPO()

        self.set_config_repository(config_repo)

        # token repository

        if "token" in options:
            token_repo = options.get("token")
            if isinstance(token_repo, str):
                token_params = options.get("token_params")
                (
                    is_token_params_valid,
                    token_args,
                    token_kwargs,
                ) = self.__is_valid_options_params(token_params)
                if not is_token_params_valid:
                    raise ValueError(
                        "Token params must be a Tuple[List[Any], Dict[str, Any]]."
                    )
                token_impl = next(
                    (impl for impl in TOKEN_REPOS if impl.__name__ == token_repo), None
                )
                if token_impl is None:
                    raise ValueError(f"Token repository '{token_repo}' not recognized.")
                token_repo = token_impl(*token_args, **token_kwargs)
        else:
            token_repo = DEFAULT_TOKEN_REPO()

        self.set_token_repository(token_repo)

        # http client

        if "http" in options:
            http_client = options.get("http")
            if isinstance(http_client, str):
                http_params = options.get("http_params")
                (
                    is_http_params_valid,
                    http_args,
                    http_kwargs,
                ) = self.__is_valid_options_params(http_params)
                if not is_http_params_valid:
                    raise ValueError(
                        "HTTP params must be a Tuple[List[Any], Dict[str, Any]]."
                    )
                http_impl = next(
                    (impl for impl in HTTP_CLIENTS if impl.__name__ == http_client),
                    None,
                )
                if http_impl is None:
                    raise ValueError(f"HTTP client '{http_client}' not recognized.")
                http_client = http_impl(*http_args, **http_kwargs)
        else:
            http_client = DEFAULT_HTTP_CLIENT()

        self.set_http_client(http_client)

        # log files

        if log_files := options.get("log_files"):
            if not isinstance(log_files, dict):
                raise ValueError(
                    "Log files must be a Dict[str, Union[str, os.PathLike, dict]]."
                )
            for log_scope, log_options in log_files.items():
                if not isinstance(log_scope, str):
                    raise ValueError("Log files keys must be str.")
                log_file_kwargs = {}
                if isinstance(log_options, dict):
                    log_file_kwargs = log_options
                elif isinstance(log_options, (str, OSPathLike)):
                    log_file_kwargs["filename"] = log_options
                if "capacity" not in log_file_kwargs:
                    log_file_kwargs["capacity"] = 10
                if log_scope == AccelByteSDK.LOGGER_NAME:
                    log_scope = None
                else:
                    log_scope = log_scope.removeprefix(f"{AccelByteSDK.LOGGER_NAME}.")
                    self._logger_names.add(f"{AccelByteSDK.LOGGER_NAME}.{log_scope}")
                log_file_kwargs["additional_scope"] = log_scope
                add_buffered_file_handler_to_logger(**log_file_kwargs)

        # other

        self._is_initialized = True

        self.logger.info("AccelByte Python SDK initialized.")

    def deinitialize(self) -> None:
        self.reset()

    def reset(self) -> None:
        if self._http_client is not None:
            self._http_client.close()

        self.__clear_logger_handlers(self._logger_names)

        self._is_initialized = False
        self._logger_names = {AccelByteSDK.LOGGER_NAME}

        self._config_repository = None
        self._token_repository = None
        self._http_client = None

    # endregion Lifecycle

    # region Accessors

    def get_config_repository(
        self, raise_when_none: bool = True
    ) -> Optional[ConfigRepository]:
        if raise_when_none and self._config_repository is None:
            raise ValueError("Config repository not set.")
        return self._config_repository

    def set_config_repository(self, config_repository: ConfigRepository) -> None:
        if not isinstance(config_repository, ConfigRepository):
            raise TypeError(
                f"Config repository '{type(config_repository).__name__}' not valid."
            )
        self._config_repository = config_repository

    def get_token_repository(
        self, raise_when_none: bool = True
    ) -> Optional[TokenRepository]:
        if raise_when_none and self._token_repository is None:
            raise ValueError("Token repository not set.")
        return self._token_repository

    def set_token_repository(self, token_repository: TokenRepository) -> None:
        if not isinstance(token_repository, TokenRepository):
            raise TypeError(
                f"Token repository '{type(token_repository).__name__}' not valid."
            )
        self._token_repository = token_repository

    def get_http_client(self, raise_when_none: bool = True) -> Optional[HttpClient]:
        if raise_when_none and self._http_client is None:
            raise ValueError("HTTP client not set.")
        return self._http_client

    def set_http_client(self, http_client: HttpClient) -> None:
        if not isinstance(http_client, HttpClient):
            raise TypeError(f"HTTP client '{type(http_client).__name__}' not valid.")
        self._http_client = http_client

    # endregion Accessors

    # region Ease of Access (result, error)

    def get_app_name(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            app_name = config_repo.get_app_name()
            if not app_name:
                return None, HttpResponse.create_error(400, "App name not found.")
            return app_name, None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_app_version(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            app_version = config_repo.get_app_version()
            if not app_version:
                return None, HttpResponse.create_error(400, "App version not found.")
            return app_version, None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_base_url(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            if base_url := config_repo.get_base_url():
                return base_url, None
            return None, HttpResponse.create_base_url_not_set_error()
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_client_auth(
        self,
    ) -> Tuple[Optional[Tuple[str, str]], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            client_id = config_repo.get_client_id()
            if not client_id:
                return None, HttpResponse.create_client_not_registered_error()
            client_secret = config_repo.get_client_secret() or ""
            return (client_id, client_secret), None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_client_id(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            client_id = config_repo.get_client_id()
            if not client_id:
                return None, HttpResponse.create_client_not_registered_error()
            return client_id, None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_client_secret(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            client_secret = config_repo.get_client_secret() or ""
            return client_secret, None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_namespace(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if config_repo := self.get_config_repository(raise_when_none=False):
            namespace = config_repo.get_namespace()
            if not namespace:
                return None, HttpResponse.create_error(400, "Namespace not found.")
            return namespace, None
        return None, HttpResponse.create_config_repo_not_found_error()

    def get_access_token(self) -> Tuple[Optional[str], Optional[HttpResponse]]:
        if token_repo := self.get_token_repository(raise_when_none=False):
            access_token = token_repo.get_access_token()
            if not access_token:
                return None, HttpResponse.create_token_not_found_error()
            return access_token, None
        return None, HttpResponse.create_token_repo_not_found_error()

    def remove_token(self) -> Tuple[None, Optional[HttpResponse]]:
        if token_repo := self.get_token_repository(raise_when_none=False):
            success = token_repo.remove_token()
            if not success:
                return None, HttpResponse.create_failed_to_remove_token_error()
            return None, None
        return None, HttpResponse.create_token_repo_not_found_error()

    def set_token(self, token: Any) -> Tuple[None, Optional[HttpResponse]]:
        if token_repo := self.get_token_repository(raise_when_none=False):
            success = token_repo.store_token(token)
            if not success:
                return None, HttpResponse.create_failed_to_set_token_error()
            return None, None
        return None, HttpResponse.create_token_repo_not_found_error()

    # endregion Ease of Access (result, error)

    # region Requests

    def run_request(self, operation: Operation, **kwargs) -> Tuple[Any, Any]:
        proto, error, kwargs = self._pre_run_request(operation=operation, **kwargs)
        if error:
            return None, error

        response, error, kwargs = self.run_proto_request(proto=proto, **kwargs)
        if error:
            return None, error

        result, error = self._post_run_request(operation=operation, response=response)
        return result, error

    async def run_request_async(
        self, operation: Operation, **kwargs
    ) -> Tuple[Any, Any]:
        proto, error, kwargs = self._pre_run_request(operation=operation, **kwargs)
        if error:
            return None, error

        response, error, kwargs = self.run_proto_request(proto=proto, **kwargs)
        if error:
            return None, error

        result, error = self._post_run_request(operation=operation, response=response)
        return result, error

    def run_proto_request(self, proto: ProtoHttpRequest, **kwargs):
        http_client = kwargs.pop("http_client", self.get_http_client())
        request = http_client.create_request(proto=proto)
        raw_response, error = http_client.send_request(request, **kwargs)
        if error:
            return None, error, kwargs
        response, error = http_client.handle_response(raw_response, **kwargs)
        return response, error, kwargs

    async def run_proto_request_async(self, proto: ProtoHttpRequest, **kwargs):
        http_client = kwargs.pop("http_client", self.get_http_client())
        request = http_client.create_request(proto=proto)
        raw_response, error = await http_client.send_request_async(request, **kwargs)
        if error:
            return None, error
        response, error = http_client.handle_response(raw_response, **kwargs)
        return response, error, kwargs

    def _create_request_from_operation(
        self,
        operation: Operation,
        **kwargs,
    ):
        config_repo = kwargs.pop("config_repo", self.get_config_repository())
        token_repo = kwargs.pop("token_repo", self.get_token_repository())
        base_url = kwargs.pop("base_url", "") or config_repo.get_base_url()
        additional_headers = kwargs.pop("additional_headers", None)
        additional_headers_override = kwargs.pop("additional_headers_override", True)
        proto, error = create_proto_from_operation(
            operation=operation,
            base_url=base_url,
            config_repo=config_repo,
            token_repo=token_repo,
            additional_headers=additional_headers,
            additional_headers_override=additional_headers_override,
            **kwargs,
        )
        return proto, error, kwargs

    def _pre_run_request(self, operation: Operation, **kwargs):
        if operation.has_redirects() and "allow_redirects" not in kwargs:
            kwargs["allow_redirects"] = False

        for k, v in self.operation_preprocessors.items():
            operation, error = v(operation=operation, sdk=self)
            if error:
                return None, error, kwargs

        proto, error, kwargs = self._create_request_from_operation(
            operation=operation, **kwargs
        )
        if error:
            return None, error, kwargs

        for k, v in self.request_preprocessors.items():
            proto, error = v(proto=proto, sdk=self)
            if error:
                return None, error, kwargs

        return proto, None, kwargs

    def _post_run_request(self, operation: Operation, response: Any) -> Tuple[Any, Any]:
        response, error = operation.parse_response(*response)
        if error:
            return None, error

        for k, v in self.response_preprocessors.items():
            response, error = v(response=response, operation=operation, sdk=self)
            if error:
                return None, error

        return response, None

    # endregion Requests

    # region Utils

    @staticmethod
    def __clear_logger_handlers(logger_names: Iterable[str]) -> None:
        for logger_name in logger_names:
            logger = logging.getLogger(logger_name)
            logger.handlers.clear()

    @staticmethod
    def __is_valid_options_params(params: Any) -> Tuple[bool, list, dict]:
        invalid_result = False, [], {}
        if params is None:
            return True, [], {}
        if not isinstance(params, tuple):
            return invalid_result
        if len(params) != 2:
            return invalid_result
        args, kwargs = params
        if not isinstance(args, list):
            return invalid_result
        if not isinstance(kwargs, dict):
            return invalid_result
        return True, args, kwargs

    # endregion Utils


# region backwards compatibility


SDK = AccelByteSDK()


def s_is_initialized(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.is_initialized()


def s_initialize(options=None, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.initialize(options=options)


def s_reset(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.reset()


def s_get_config_repository(raise_when_none=True, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_config_repository(raise_when_none)


def s_set_config_repository(config_repository, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.set_config_repository(config_repository)


def s_get_token_repository(raise_when_none=True, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_token_repository(raise_when_none)


def s_set_token_repository(token_repository, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.set_token_repository(token_repository)


def s_get_http_client(raise_when_none=True, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_http_client(raise_when_none)


def s_set_http_client(http_client, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.set_http_client(http_client)


def s_get_app_name(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_app_name()


def s_get_app_version(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_app_version()


def s_get_base_url(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_base_url()


def s_get_client_auth(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_client_auth()


def s_get_client_id(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_client_id()


def s_get_client_secret(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_client_secret()


def s_get_namespace(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_namespace()


def s_get_access_token(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.get_access_token()


def s_remove_token(sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.remove_token()


def s_set_token(token, sdk: Optional[AccelByteSDK] = None):
    sdk = sdk if sdk is not None else SDK
    return sdk.set_token(token)


def s_run_request(operation, sdk: Optional[AccelByteSDK] = None, **kwargs):
    sdk = sdk if sdk is not None else SDK
    return sdk.run_request(operation, **kwargs)


async def s_run_request_async(operation, sdk: Optional[AccelByteSDK] = None, **kwargs):
    sdk = sdk if sdk is not None else SDK
    return await sdk.run_request_async(operation, **kwargs)


def s_run_proto_request(proto, sdk: Optional[AccelByteSDK] = None, **kwargs):
    sdk = sdk if sdk is not None else SDK
    return sdk.run_proto_request(proto, **kwargs)


async def s_run_proto_request_async(
    proto, sdk: Optional[AccelByteSDK] = None, **kwargs
):
    sdk = sdk if sdk is not None else SDK
    return await sdk.run_proto_request_async(proto, **kwargs)


# endregion backwards compatibility
