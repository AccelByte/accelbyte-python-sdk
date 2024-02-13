import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import get_game_session_by_pod_name
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = get_game_session_by_pod_name(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
