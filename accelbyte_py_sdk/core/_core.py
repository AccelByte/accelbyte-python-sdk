# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# TODO: remove

import logging
from os import PathLike
from typing import Any, Dict, Optional, Tuple, Union

from ._config_repository import ConfigRepository
from ._config_repository import DictConfigRepository
from ._config_repository import DotEnvFileConfigRepository
from ._config_repository import EnvironmentConfigRepository
from ._config_repository import JsonConfigRepository
from ._config_repository import JsonFileConfigRepository
from ._config_repository import MyConfigRepository
from ._config_repository import YamlConfigRepository
from ._config_repository import YamlFileConfigRepository

from ._token_repository import TokenRepository
from ._token_repository import InMemoryTokenRepository
from ._token_repository import MyTokenRepository

from ._http_client import HttpClient
from ._http_client import RequestsHttpClient
from ._http_client import HttpxHttpClient

from ._proto_http_request import ProtoHttpRequest
from ._proto_http_request import create_proto_from_operation

from ._http_response import HttpResponse

from ._operation import Operation

from ._utils import add_buffered_file_handler_to_logger
from ._utils import get_query_from_http_redirect_response

_LOGGER = logging.getLogger("accelbyte_py_sdk")

_IS_INITIALIZED: bool = False
_CONFIG_REPOSITORY: Union[None, ConfigRepository] = None
_TOKEN_REPOSITORY: Union[None, TokenRepository] = None
_HTTP_CLIENT: Union[None, HttpClient] = None

_CONFIG_REPOSITORY_IMPL = [
    EnvironmentConfigRepository,
    DictConfigRepository,
    DotEnvFileConfigRepository,
    JsonConfigRepository,
    JsonFileConfigRepository,
    MyConfigRepository,
    YamlConfigRepository,
    YamlFileConfigRepository,
]

_TOKEN_REPOSITORY_IMPL = [
    InMemoryTokenRepository,
    MyTokenRepository,
]

_HTTP_CLIENT_IMPL = [
    RequestsHttpClient,
    HttpxHttpClient,
]


def is_initialized() -> bool:
    return _IS_INITIALIZED


def initialize(options: Union[None, Dict[str, Any]] = None) -> None:
    """Initializes the AccelByte Python SDK.

    Args:
        options (dict): Options used by the SDK. It can contain any of the following:
         -- config (Optional[Union[str, Type[ConfigRepository]]]): Config Repository to use.
         -- config_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Config Repository parameters.
         -- token (Optional[Union[str, Type[TokenRepository]]]): Token Repository to use.
         -- token_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Token Repository parameters.
         -- http (Optional[Union[str, Type[HttpClient]]]): Http Client to use.
         -- http_params (Optional[Tuple[List[Any], Dict[str, Any]]]): Http Client parameters.
         -- log_files (Optional[Dict[str], Tuple[str, PathLike[str], dict]]): Log files.

     Raises:
         ValueError: If 'options.config_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.config' is not recognized.
         ValueError: If 'options.token_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.token' is not recognized.
         ValueError: If 'options.http_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.http' is not recognized.
         ValueError: If 'options.log_files' is not Dict[str], Tuple[str, PathLike[str], dict].
    """

    def is_valid_params(params) -> Tuple[bool, list, dict]:
        if params is None:
            return True, [], {}
        if not isinstance(params, tuple):
            return False, [], {}
        if len(params) != 2:
            return False, [], {}
        args, kwargs = params
        if not isinstance(args, list):
            return False, [], {}
        if not isinstance(kwargs, dict):
            return False, args, {}
        return True, args, kwargs

    global _IS_INITIALIZED
    if _IS_INITIALIZED:
        _LOGGER.warning(f"Already initialized.")
        return

    options = options if options is not None else {}

    # region log files

    if "log_files" in options:
        log_files = options["log_files"]
        if not isinstance(log_files, dict):
            raise ValueError(
                f"Log files must be a Dict[str], Tuple[str, PathLike[str], dict]."
            )
        for additional_scope, log_file_options in log_files.items():
            log_file_kwargs = {}
            if isinstance(log_file_options, dict):
                log_file_kwargs = log_file_options
            elif isinstance(log_file_options, (str, PathLike)):
                log_file_kwargs["filename"] = log_file_options
            if "capacity" not in log_file_kwargs:
                log_file_kwargs["capacity"] = 10
            if additional_scope == "accelbyte_py_sdk":
                additional_scope = None
            elif additional_scope.startswith("accelbyte_py_sdk."):
                additional_scope = additional_scope.removeprefix("accelbyte_py_sdk.")
            log_file_kwargs["additional_scope"] = additional_scope
            add_buffered_file_handler_to_logger(**log_file_kwargs)

    # endregion log files

    # region config repository

    if "config" in options:
        config_repository = options["config"]
        if isinstance(config_repository, str):
            config_params = options.get("config_params")
            is_valid_config_params, config_args, config_kwargs = is_valid_params(
                config_params
            )
            if not is_valid_config_params:
                raise ValueError(
                    f"Config params must be a Tuple[List[Any], Dict[str, Any]]."
                )
            implementation = next(
                (
                    impl
                    for impl in _CONFIG_REPOSITORY_IMPL
                    if impl.__name__ == config_repository
                ),
                None,
            )
            if implementation is None:
                raise ValueError(
                    f"Config repository '{config_repository}' not recognized."
                )
            config_repository = implementation(*config_args, **config_kwargs)
    else:
        config_repository = _CONFIG_REPOSITORY_IMPL[0]()

    set_config_repository(config_repository)

    # endregion config repository

    # region token repository

    if "token" in options:
        token_repository = options["token"]
        if isinstance(token_repository, str):
            token_params = options.get("token_params")
            is_valid_token_params, token_args, token_kwargs = is_valid_params(
                token_params
            )
            if not is_valid_token_params:
                raise ValueError(
                    f"Token params must be a Tuple[List[Any], Dict[str, Any]]."
                )
            implementation = next(
                (
                    impl
                    for impl in _TOKEN_REPOSITORY_IMPL
                    if impl.__name__ == token_repository
                ),
                None,
            )
            if implementation is None:
                raise ValueError(
                    f"Token repository '{token_repository}' not recognized."
                )
            token_repository = implementation(*token_args, **token_kwargs)
    else:
        token_repository = _TOKEN_REPOSITORY_IMPL[0]()

    set_token_repository(token_repository)

    # endregion token repository

    # region http client

    if "http" in options:
        http_client = options["http"]
        if isinstance(http_client, str):
            http_params = options.get("http_params")
            is_valid_http_params, http_args, http_kwargs = is_valid_params(http_params)
            if not is_valid_http_params:
                raise ValueError(
                    f"HTTP params must be a Tuple[List[Any], Dict[str, Any]]."
                )
            implementation = next(
                (impl for impl in _HTTP_CLIENT_IMPL if impl.__name__ == http_client),
                None,
            )
            if implementation is None:
                raise ValueError(f"HTTP Client '{http_client}' not recognized.")
            http_client = implementation(*http_args, **http_kwargs)
    else:
        http_client = _HTTP_CLIENT_IMPL[0]()

    set_http_client(http_client)

    # endregion http client

    _IS_INITIALIZED = True
    _LOGGER.info("AccelByte Python SDK initialized.")


def reset() -> None:
    global _IS_INITIALIZED
    global _CONFIG_REPOSITORY
    global _TOKEN_REPOSITORY
    global _HTTP_CLIENT

    if _HTTP_CLIENT is not None:
        _HTTP_CLIENT.close()

    _IS_INITIALIZED = False
    _CONFIG_REPOSITORY = None
    _TOKEN_REPOSITORY = None
    _HTTP_CLIENT = None


# region ConfigRepository


def get_config_repository() -> ConfigRepository:
    if _CONFIG_REPOSITORY is None:
        raise ValueError("Config repository not set.")
    return _CONFIG_REPOSITORY


def set_config_repository(config_repository: ConfigRepository) -> None:
    if not isinstance(config_repository, ConfigRepository):
        raise TypeError(
            f"Config repository '{type(config_repository).__name__}' not valid."
        )
    global _CONFIG_REPOSITORY
    _CONFIG_REPOSITORY = config_repository


def get_base_url() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    base_url = config_repo.get_base_url()
    if not base_url:
        return None, HttpResponse.create_base_url_not_set_error()
    return base_url, None


def get_client_auth() -> Tuple[Union[None, Tuple[str, str]], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    client_id = config_repo.get_client_id()
    client_secret = config_repo.get_client_secret()
    if not client_id:
        return None, HttpResponse.create_client_not_registered_error()
    client_secret = client_secret or ""
    return (client_id, client_secret), None


def get_client_id() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    client_id = config_repo.get_client_id()
    if not client_id:
        return None, HttpResponse.create_client_not_registered_error()
    return client_id, None


def get_client_secret() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    client_secret = config_repo.get_client_secret() or ""
    return client_secret, None


def get_namespace() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    namespace = config_repo.get_namespace()
    if not namespace:
        return None, HttpResponse.create_error(400, "Namespace not found.")
    return namespace, None


def get_app_name() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    app_name = config_repo.get_app_name()
    if not app_name:
        return None, HttpResponse.create_error(400, "App name not found.")
    return app_name, None


def get_app_version() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_config_repo_not_found_error()
    app_version = config_repo.get_app_version()
    if not app_version:
        return None, HttpResponse.create_error(400, "App version not found.")
    return app_version, None


# endregion ConfigRepository


# region TokenRepository


def get_token_repository() -> TokenRepository:
    if _TOKEN_REPOSITORY is None:
        raise ValueError("Token repository not set.")
    return _TOKEN_REPOSITORY


def set_token_repository(token_repository: TokenRepository) -> None:
    if not isinstance(token_repository, TokenRepository):
        raise TypeError(
            f"Token repository '{type(token_repository).__name__}' not valid."
        )
    global _TOKEN_REPOSITORY
    _TOKEN_REPOSITORY = token_repository


def get_access_token() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_token_repo_not_found_error()
    token = token_repo.get_token()
    if not token:
        return None, HttpResponse.create_token_not_found_error()
    if hasattr(token, "access_token"):
        return str(token.access_token), None
    elif hasattr(token, "__iter__") and "access_token" in token:
        return str(token["access_token"]), None
    else:
        return None, HttpResponse.create_token_not_found_error()


def remove_token() -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_token_repo_not_found_error()
    success = token_repo.remove_token()
    if not success:
        return None, HttpResponse.create_error(400, "Failed to remove token.")
    return None, None


def set_token(token: Any) -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_token_repo_not_found_error()
    success = token_repo.store_token(token)
    if not success:
        return None, HttpResponse.create_error(400, "Failed to set token.")
    return None, None


def _is_valid_token(token: Any) -> bool:
    if token is None:
        return False
    access_token_key = "access_token"
    if hasattr(token, access_token_key):  # in attr
        return True
    if isinstance(token, dict) and access_token_key in token:  # in dict
        return True
    return False


def _try_set_token(token: Any) -> Tuple[bool, Union[None, HttpResponse]]:
    if token is None:
        return False, HttpResponse.create_error(400, "Empty token.")
    if not _is_valid_token(token):
        return False, HttpResponse.create_error(
            400, "Failed to set token. The token is not valid."
        )
    _, error = set_token(token)
    if error:
        return True, error
    return True, None


# endregion TokenRepository


# region HttpClient


def get_http_client() -> HttpClient:
    if _HTTP_CLIENT is None:
        raise ValueError("HTTP client not set.")
    return _HTTP_CLIENT


def set_http_client(http_client: HttpClient) -> None:
    if not isinstance(http_client, HttpClient):
        raise TypeError(f"HTTP Client '{type(http_client).__name__}' not valid.")
    global _HTTP_CLIENT
    _HTTP_CLIENT = http_client


def _pre_run_request(
    operation: Operation,
    base_url: Optional[str] = "",
    additional_headers: Optional[Dict[str, str]] = None,
    additional_headers_override: bool = True,
    config_repo: Optional[ConfigRepository] = None,
    token_repo: Optional[TokenRepository] = None,
    **kwargs,
) -> Tuple[Any, Any]:
    if not config_repo:
        if not _CONFIG_REPOSITORY:
            return None, HttpResponse.create_config_repo_not_found_error()
        config_repo = _CONFIG_REPOSITORY
    if not token_repo:
        if not _TOKEN_REPOSITORY:
            return None, HttpResponse.create_token_repo_not_found_error()
        token_repo = _TOKEN_REPOSITORY
    if not base_url:
        base_url = config_repo.get_base_url()

    proto, error = create_proto_from_operation(
        operation=operation,
        base_url=base_url,
        additional_headers=additional_headers,
        additional_headers_override=additional_headers_override,
        config_repo=config_repo,
        token_repo=token_repo,
        **kwargs,
    )
    return proto, error


def _post_run_request(
    operation: Operation, response: Any, error: Any
) -> Tuple[Any, Any]:
    success, error = operation.parse_response(*response)
    if error:
        return None, error

    if operation.has_redirects() and operation.location_query:
        query, error = get_query_from_http_redirect_response(
            success, operation.location_query
        )
        if error:
            return None, error
        else:
            return query, None

    # TODO(elmer): still not a fan of this bit
    is_valid_token, error = _try_set_token(success)
    if error and is_valid_token:
        return None, error

    return success, None


def run_proto_request(
    proto: ProtoHttpRequest,
    has_redirects: bool = False,
    http_client: Optional[HttpClient] = None,
    **kwargs,
) -> Tuple[Any, Any]:
    if has_redirects and "allow_redirects" not in kwargs:
        kwargs["allow_redirects"] = False
    if not http_client:
        if not _HTTP_CLIENT:
            return None, HttpResponse.create_http_client_not_found_error()
        http_client = _HTTP_CLIENT

    request = http_client.create_request(proto=proto)

    raw_response, error = http_client.send_request(request, **kwargs)
    if error:
        return None, error

    response, error = http_client.handle_response(raw_response, **kwargs)
    return response, error


async def run_proto_request_async(
    proto: ProtoHttpRequest,
    has_redirects: bool = False,
    http_client: Optional[HttpClient] = None,
    **kwargs,
) -> Tuple[Any, Any]:
    if has_redirects and "allow_redirects" not in kwargs:
        kwargs["allow_redirects"] = False
    if not http_client:
        if not _HTTP_CLIENT:
            return None, HttpResponse.create_http_client_not_found_error()
        http_client = _HTTP_CLIENT

    request = http_client.create_request(proto=proto)

    raw_response, error = await http_client.send_request_async(request, **kwargs)
    if error:
        return None, error

    response, error = http_client.handle_response(raw_response, **kwargs)
    return response, error


def run_request(
    operation: Operation,
    base_url: Optional[str] = "",
    additional_headers: Optional[Dict[str, str]] = None,
    additional_headers_override: bool = True,
    config_repo: Optional[ConfigRepository] = None,
    token_repo: Optional[TokenRepository] = None,
    http_client: Optional[HttpClient] = None,
    **kwargs,
) -> Tuple[Any, Any]:
    proto, error = _pre_run_request(
        operation=operation,
        base_url=base_url,
        additional_headers=additional_headers,
        additional_headers_override=additional_headers_override,
        config_repo=config_repo,
        token_repo=token_repo,
        http_client=http_client,
        **kwargs,
    )
    if error:
        return None, error

    response, error = run_proto_request(
        proto=proto,
        has_redirects=operation.has_redirects(),
        http_client=http_client,
    )
    if error:
        return None, error

    result, error = _post_run_request(
        operation=operation, response=response, error=error
    )
    return result, error


async def run_request_async(
    operation: Operation,
    base_url: Optional[str] = "",
    additional_headers: Optional[Dict[str, str]] = None,
    additional_headers_override: bool = True,
    config_repo: Optional[ConfigRepository] = None,
    token_repo: Optional[TokenRepository] = None,
    http_client: Optional[HttpClient] = None,
    **kwargs,
) -> Tuple[Any, Any]:
    proto, error = _pre_run_request(
        operation=operation,
        base_url=base_url,
        additional_headers=additional_headers,
        additional_headers_override=additional_headers_override,
        config_repo=config_repo,
        token_repo=token_repo,
        http_client=http_client,
        **kwargs,
    )
    if error:
        return None, error

    response, error = await run_proto_request_async(
        proto=proto,
        has_redirects=operation.has_redirects(),
        http_client=http_client,
    )
    if error:
        return None, error

    result, error = _post_run_request(
        operation=operation, response=response, error=error
    )
    return result, error


# endregion HttpClient
