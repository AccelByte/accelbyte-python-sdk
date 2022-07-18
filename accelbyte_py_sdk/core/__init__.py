# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Optional

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
from ._http_client import HttpRawResponse
from ._http_client import HttpxHttpClient
from ._http_client import RequestsHttpClient

from ._http_backoff_policy import HttpBackoffPolicy
from ._http_backoff_policy import ConstantHttpBackoffPolicy
from ._http_backoff_policy import ExponentialHttpBackoffPolicy
from ._http_backoff_policy import NoHttpBackoffPolicy

from ._http_retry_policy import HttpRetryPolicy
from ._http_retry_policy import CompositeHttpRetryPolicy
from ._http_retry_policy import MaxElapsedHttpRetryPolicy
from ._http_retry_policy import MaxRetriesHttpRetryPolicy
from ._http_retry_policy import NoHttpRetryPolicy
from ._http_retry_policy import StatusCodesHttpRetryPolicy

from ._http_response import HttpResponse

from ._proto_http_request import ProtoHttpRequest
from ._proto_http_request import SecuritiesResolver
from ._proto_http_request import create_proto_from_operation

from ._timer import Timer
from ._timer import TimerStatus

from ._ws_client import WebsocketsWSClient

from ._wsm import WebSocketMessage
from ._wsm import WebSocketMessageParserError
from ._wsm import WebSocketMessageParserException
from ._wsm import parse_wsm

from ._decorators import deprecated
from ._decorators import same_doc_as
from ._header import Header
from ._headerstr import HeaderStr
from ._model import Model
from ._operation import Operation
from ._strenum import StrEnum

from ._utils import SENTINEL
from ._utils import add_buffered_file_handler_to_logger
from ._utils import add_stream_handler_to_logger
from ._utils import clean_content_type
from ._utils import create_basic_authentication
from ._utils import create_pkce_verifier_and_challenge_plain
from ._utils import create_pkce_verifier_and_challenge_s256
from ._utils import create_url
from ._utils import flatten_query_params
from ._utils import generate_amazon_xray_trace_id
from ._utils import generate_websocket_message_id
from ._utils import get_env_config
from ._utils import get_env_user_credentials
from ._utils import get_logger
from ._utils import get_query_from_http_redirect_response
from ._utils import is_json_mime_type
from ._utils import set_env_config
from ._utils import set_env_user_credentials
from ._utils import set_logger_level
from ._utils import try_convert_content_type

from ._sdk import SDK
from ._sdk import AccelByteSDK
from ._sdk import OperationPreprocessor
from ._sdk import RequestPreprocessor
from ._sdk import ResponsePreprocessor


is_initialized = SDK.is_initialized
initialize = SDK.initialize
reset = SDK.reset

get_config_repository = SDK.get_config_repository
set_config_repository = SDK.set_config_repository
get_token_repository = SDK.get_token_repository
set_token_repository = SDK.set_token_repository
get_http_client = SDK.get_http_client
set_http_client = SDK.set_http_client

get_app_name = SDK.get_app_name
get_app_version = SDK.get_app_version
get_base_url = SDK.get_base_url
get_client_auth = SDK.get_client_auth
get_client_id = SDK.get_client_id
get_client_secret = SDK.get_client_secret
get_namespace = SDK.get_namespace
get_access_token = SDK.get_access_token
remove_token = SDK.remove_token
set_token = SDK.set_token

run_request = SDK.run_request
run_request_async = SDK.run_request_async
run_proto_request = SDK.run_proto_request
run_proto_request_async = SDK.run_proto_request_async
