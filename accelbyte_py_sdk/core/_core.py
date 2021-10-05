from typing import Any, Dict, Tuple, Union

from ._config_repository import ConfigRepository
from ._config_repository import EnvironmentConfigRepository
from ._config_repository import MyConfigRepository

from ._token_repository import TokenRepository
from ._token_repository import InMemoryTokenRepository
from ._token_repository import MyTokenRepository

from ._http_client import HttpClient
from ._http_client import RequestsHttpClient

from ._header import Header
from ._http_response import HttpResponse
from ._operation import Operation
from ._utils import get_query_from_http_redirect_response

_CONFIG_REPOSITORY: Union[None, ConfigRepository] = None
_TOKEN_REPOSITORY: Union[None, TokenRepository] = None
_HTTP_CLIENT: Union[None, HttpClient] = None

_CONFIG_REPOSITORY_IMPL = [
    EnvironmentConfigRepository,
    MyConfigRepository,
]

_TOKEN_REPOSITORY_IMPL = [
    InMemoryTokenRepository,
    MyTokenRepository,
]

_HTTP_CLIENT_IMPL = [
    RequestsHttpClient,
]


def initialize(
        options: Union[None, Dict[str, Any]] = None
) -> None:
    options = options if options is not None else {}

    # region config repository

    global _CONFIG_REPOSITORY
    if "config" in options:
        config_repository = options["config"]
        if isinstance(config_repository, str):
            implementation = next((impl for impl in _CONFIG_REPOSITORY_IMPL if impl.__name__ == impl), None)
            if implementation is None:
                raise ValueError(f"Config repository '{config_repository}' not recognized.")
            config_repository = implementation()
    else:
        config_repository = _CONFIG_REPOSITORY_IMPL[0]()

    if not isinstance(config_repository, ConfigRepository):
        raise TypeError(f"Config repository '{type(config_repository).__name__}' not valid.")

    _CONFIG_REPOSITORY = config_repository

    # endregion config repository

    # region token repository

    global _TOKEN_REPOSITORY
    if "token" in options:
        token_repository = options["token"]
        if isinstance(token_repository, str):
            implementation = next((impl for impl in _TOKEN_REPOSITORY_IMPL if impl.__name__ == impl), None)
            if implementation is None:
                raise ValueError(f"Token repository '{token_repository}' not recognized.")
            token_repository = implementation()
    else:
        token_repository = _TOKEN_REPOSITORY_IMPL[0]()

    if not isinstance(token_repository, TokenRepository):
        raise TypeError(f"Token repository '{type(token_repository).__name__}' not valid.")

    _TOKEN_REPOSITORY = token_repository

    # endregion token repository

    # region http client

    global _HTTP_CLIENT
    if "http" in options:
        http_client = options["http"]
        if isinstance(http_client, str):
            implementation = next((impl for impl in _HTTP_CLIENT_IMPL if impl.__name__ == http_client), None)
            if implementation is None:
                raise ValueError(f"HTTP Client '{http_client}' not recognized.")
            http_client = implementation()
    else:
        http_client = _HTTP_CLIENT_IMPL[0]()

    if not isinstance(http_client, HttpClient):
        raise TypeError(f"HTTP Client '{type(http_client).__name__}' not valid.")

    _HTTP_CLIENT = http_client

    # endregion http client


# region ConfigRepository

def get_config_repository() -> ConfigRepository:
    if _CONFIG_REPOSITORY is None:
        raise ValueError("Config repository not set.")
    return _CONFIG_REPOSITORY


def set_config_repository(config_repository: ConfigRepository) -> None:
    global _CONFIG_REPOSITORY
    _CONFIG_REPOSITORY = config_repository


def get_base_url() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = get_config_repository()
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    base_url = config_repo.get_base_url()
    if not base_url:
        return None, HttpResponse.create_error(400, "Base URL not set.")
    return base_url, None


def get_client_auth() -> Tuple[Union[None, Tuple[str, str]], Union[None, HttpResponse]]:
    config_repo = get_config_repository()
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_id = config_repo.get_client_id()
    client_secret = config_repo.get_client_secret()
    if not client_id or not client_secret:
        return None, HttpResponse.create_error(400, "Client not registered.")
    return (client_id, client_secret), None


def get_client_id() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = get_config_repository()
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_id = config_repo.get_client_id()
    if not client_id:
        return None, HttpResponse.create_error(400, "Client not registered.")
    return client_id, None


def get_client_secret() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = get_config_repository()
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    client_secret = config_repo.get_client_secret()
    if not client_secret:
        return None, HttpResponse.create_error(400, "Client not registered.")
    return client_secret, None


def get_namespace() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    config_repo = get_config_repository()
    if not config_repo:
        return None, HttpResponse.create_error(400, "Can't find config repository.")
    namespace = config_repo.get_namespace()
    if not namespace:
        return None, HttpResponse.create_error(400, "Namespace not found.")
    return namespace, None

# endregion ConfigRepository


# region TokenRepository

def get_token_repository() -> TokenRepository:
    if _TOKEN_REPOSITORY is None:
        raise ValueError("Token repository not set.")
    return _TOKEN_REPOSITORY


def set_token_repository(token_repository: TokenRepository) -> None:
    global _TOKEN_REPOSITORY
    _TOKEN_REPOSITORY = token_repository


def get_access_token() -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    token_repo = get_token_repository()
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
    token = token_repo.get_token()
    if not token:
        return None, HttpResponse.create_error(400, "Can't find token.")
    if not hasattr(token, "access_token"):
        return None, HttpResponse.create_error(400, "Failed to get access token.")
    return str(token.access_token), None


def remove_token() -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = get_token_repository()
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
    success = token_repo.remove_token()
    if not success:
        return None, HttpResponse.create_error(400, "Failed to remove token.")
    return None, None


def set_token(token: Any) -> Tuple[None, Union[None, HttpResponse]]:
    token_repo = get_token_repository()
    if not token_repo:
        return None, HttpResponse.create_error(400, "Can't find token repository.")
    success = token_repo.store_token(token)
    if not success:
        return None, HttpResponse.create_error(400, "Failed to set token.")
    return None, None

# endregion TokenRepository


# region HttpClient

def get_http_client() -> HttpClient:
    if _HTTP_CLIENT is None:
        raise ValueError("HTTP client not set.")
    return _HTTP_CLIENT


def set_http_client(http_client: HttpClient) -> None:
    global _HTTP_CLIENT
    _HTTP_CLIENT = http_client


Response = Tuple[int, str, Any]


def run_request(operation: Operation, base_url: Union[None, str] = None, headers: Union[None, Header] = None, **kwargs) -> Tuple[Any, Any]:
    http_client = get_http_client()

    # TODO(elmer): fill up client_id, namespace only if operation needs it
    # here

    if base_url is None:
        config_base_url, error = get_base_url()
        if not error:
            base_url = config_base_url

    headers = headers if headers is not None else operation.get_headers()

    if hasattr(operation, "authorization_override") and operation.authorization_override:
        headers.add_authorization(operation.authorization_override)
    elif operation.security == "basic":
        client_auth, error = get_client_auth()
        if error:
            return None, error
        headers.add_basic_authorization2(client_auth)
    elif operation.security == "bearer":
        access_token, error = get_access_token()
        if error:
            return None, error
        headers.add_bearer_authorization(access_token)

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

    # # TODO(elmer): not a fan of this bit
    if hasattr(success, "access_token"):
        _, error = set_token(success)
        if error:
            return None, error
        else:
            return None, None

    return success, None

# endregion HttpClient
