# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import logging
from typing import Any, Dict, Optional, Tuple, Union

from ._config_repository import ConfigRepository
from ._config_repository import DictConfigRepository
from ._config_repository import EnvironmentConfigRepository
from ._config_repository import JsonConfigRepository
from ._config_repository import JsonFileConfigRepository
from ._config_repository import MyConfigRepository

from ._token_repository import TokenRepository
from ._token_repository import InMemoryTokenRepository
from ._token_repository import MyTokenRepository

from ._http_client import HttpClient
from ._http_client import RequestsHttpClient
from ._http_client import HttpxHttpClient

from ._header import Header
from ._http_response import HttpResponse
from ._operation import Operation
from ._utils import get_query_from_http_redirect_response

_LOGGER = logging.getLogger("accelbyte_py_sdk")

_IS_INITIALIZED: bool = False
_CONFIG_REPOSITORY: Union[None, ConfigRepository] = None
_TOKEN_REPOSITORY: Union[None, TokenRepository] = None
_HTTP_CLIENT: Union[None, HttpClient] = None

_CONFIG_REPOSITORY_IMPL = [
    EnvironmentConfigRepository,
    DictConfigRepository,
    JsonConfigRepository,
    JsonFileConfigRepository,
    MyConfigRepository,
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


def initialize(
        options: Union[None, Dict[str, Any]] = None
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

     Raises:
         ValueError: If 'options.config_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.config' is not recognized.
         ValueError: If 'options.token_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.token' is not recognized.
         ValueError: If 'options.http_params' is not Tuple[List[Any], Dict[str, Any]].
         ValueError: If 'options.http' is not recognized.
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

    # region config repository

    if "config" in options:
        config_repository = options["config"]
        if isinstance(config_repository, str):
            config_params = options.get("config_params")
            is_valid_config_params, config_args, config_kwargs = is_valid_params(config_params)
            if not is_valid_config_params:
                raise ValueError(f"Config params must be a Tuple[List[Any], Dict[str, Any]].")
            implementation = next((impl for impl in _CONFIG_REPOSITORY_IMPL if impl.__name__ == config_repository), None)
            if implementation is None:
                raise ValueError(f"Config repository '{config_repository}' not recognized.")
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
            is_valid_token_params, token_args, token_kwargs = is_valid_params(token_params)
            if not is_valid_token_params:
                raise ValueError(f"Token params must be a Tuple[List[Any], Dict[str, Any]].")
            implementation = next((impl for impl in _TOKEN_REPOSITORY_IMPL if impl.__name__ == token_repository), None)
            if implementation is None:
                raise ValueError(f"Token repository '{token_repository}' not recognized.")
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
                raise ValueError(f"HTTP params must be a Tuple[List[Any], Dict[str, Any]].")
            implementation = next((impl for impl in _HTTP_CLIENT_IMPL if impl.__name__ == http_client), None)
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
        raise TypeError(f"Config repository '{type(config_repository).__name__}' not valid.")
    global _CONFIG_REPOSITORY
    _CONFIG_REPOSITORY = config_repository


def get_base_url() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    base_url = config_repo.get_base_url()
    if not base_url:
        return None, HttpResponse.create_error(400, "Base URL not set.")
    return base_url, None


def get_client_auth() -> Tuple[Union[None, Tuple[str, str]], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_id = config_repo.get_client_id()
    client_secret = config_repo.get_client_secret()
    if not client_id:
        return None, HttpResponse.create_error(400, "Client not registered.")
    client_secret = client_secret or ""
    return (client_id, client_secret), None


def get_client_id() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_id = config_repo.get_client_id()
    if not client_id:
        return None, HttpResponse.create_error(400, "Client not registered.")
    return client_id, None


def get_client_secret() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_secret = config_repo.get_client_secret() or ""
    return client_secret, None


def get_namespace() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    namespace = config_repo.get_namespace()
    if not namespace:
        return None, HttpResponse.create_error(400, "Namespace not found.")
    return namespace, None


def get_app_name() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    app_name = config_repo.get_app_name()
    if not app_name:
        return None, HttpResponse.create_error(400, "App name not found.")
    return app_name, None


def get_app_version() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = _CONFIG_REPOSITORY
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
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
        raise TypeError(f"Token repository '{type(token_repository).__name__}' not valid.")
    global _TOKEN_REPOSITORY
    _TOKEN_REPOSITORY = token_repository


def get_access_token() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
    token = token_repo.get_token()
    if not token:
        return None, HttpResponse.create_error(400, "Can't find token.")
    if hasattr(token, "access_token"):
        return str(token.access_token), None
    elif hasattr(token, "__iter__") and "access_token" in token:
        return str(token["access_token"]), None
    else:
        return None, HttpResponse.create_error(400, "Failed to get access token.")


def remove_token() -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
    success = token_repo.remove_token()
    if not success:
        return None, HttpResponse.create_error(400, "Failed to remove token.")
    return None, None


def set_token(token: Any) -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = _TOKEN_REPOSITORY
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
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
        return False, HttpResponse.create_error(400, "Failed to set token. The token is not valid.")
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


def run_request(
        operation: Operation,
        base_url: Union[None, str] = None,
        headers: Union[None, Header] = None,
        additional_headers: Union[None, Dict[str, str]] = None,
        additional_headers_override: bool = True,
        **kwargs) -> Tuple[Any, Any]:
    http_client = _HTTP_CLIENT

    if not http_client:
        return None, HttpResponse.create_error(400, "Can't find HTTP client.")

    if base_url is None:
        config_base_url, error = get_base_url()
        if not error:
            base_url = config_base_url

    headers, error = get_final_headers(operation, headers, additional_headers, additional_headers_override)
    if error:
        return None, error

    if operation.has_redirects() and "allow_redirects" not in kwargs:
        kwargs["allow_redirects"] = False

    request, error = http_client.create_request(operation, base_url, headers, **kwargs)
    if error:
        return None, error

    raw_response, error = http_client.send_request(request, **kwargs)
    if error:
        return None, error

    response, error = http_client.handle_response(raw_response, **kwargs)
    if error:
        return None, error

    success, failure = operation.parse_response(*response)

    if failure:
        return None, failure

    if operation.has_redirects() and operation.location_query:
        query, error = get_query_from_http_redirect_response(success, operation.location_query)
        if error:
            return None, error
        else:
            return query, None

    # TODO(elmer): still not a fan of this bit
    is_valid_token, error = _try_set_token(success)
    if is_valid_token:
        if error:
            return None, error
        return success, None

    return success, None


async def run_request_async(
        operation: Operation,
        base_url: Union[None, str] = None,
        headers: Union[None, Header] = None,
        additional_headers: Union[None, Dict[str, str]] = None,
        additional_headers_override: bool = True,
        **kwargs) -> Tuple[Any, Any]:
    http_client = _HTTP_CLIENT

    if not http_client:
        return None, HttpResponse.create_error(400, "Can't find HTTP client.")

    if base_url is None:
        config_base_url, error = get_base_url()
        if not error:
            base_url = config_base_url

    headers, error = get_final_headers(operation, headers, additional_headers, additional_headers_override)
    if error:
        return None, error

    if operation.has_redirects() and "allow_redirects" not in kwargs:
        kwargs["allow_redirects"] = False

    request, error = http_client.create_request(operation, base_url, headers, **kwargs)
    if error:
        return None, error

    raw_response, error = await http_client.send_request_async(request, **kwargs)
    if error:
        return None, error

    response, error = http_client.handle_response(raw_response, **kwargs)
    if error:
        return None, error

    success, failure = operation.parse_response(*response)

    if failure:
        return None, failure

    if operation.has_redirects() and operation.location_query:
        query, error = get_query_from_http_redirect_response(success, operation.location_query)
        if error:
            return None, error
        else:
            return query, None

    # TODO(elmer): still not a fan of this bit
    is_valid_token, error = _try_set_token(success)
    if is_valid_token:
        if error:
            return None, error
        return success, None

    return success, None


def get_final_headers(
        operation: Operation,
        headers: Union[None, Header] = None,
        additional_headers: Union[None, Dict[str, str]] = None,
        additional_headers_override: bool = True,
        add_authorization: bool = True,
        auto_add_bearer_auth: bool = True,
) -> Tuple[Optional[Header], Optional[HttpResponse]]:
    headers = headers if headers is not None else operation.get_headers()

    if "Authorization" in headers:
        add_authorization = False
    elif additional_headers and "Authorization" in additional_headers:
        add_authorization = False

    if add_authorization:
        if hasattr(operation, "authorization_override") and operation.authorization_override:
            headers.add_authorization(operation.authorization_override)
        elif operation.security_type == "basic":
            client_auth, error = get_client_auth()
            if error:
                return None, error
            headers.add_basic_authorization2(client_auth)
        elif operation.security_type == "bearer":
            access_token, error = get_access_token()
            if error:
                return None, error
            headers.add_bearer_authorization(access_token)
        elif auto_add_bearer_auth:
            access_token, _ = get_access_token()
            if access_token:
                headers.add_bearer_authorization(access_token)

    headers.add_amazon_xray_trace_id()

    app_name, _ = get_app_name()
    app_version, _ = get_app_version()
    headers.add_user_agent(app_info=(app_name, app_version))

    if additional_headers:
        for k, v in additional_headers.items():
            if not additional_headers_override and k in headers:
                continue
            headers[k] = v

    return headers, None


# endregion HttpClient
