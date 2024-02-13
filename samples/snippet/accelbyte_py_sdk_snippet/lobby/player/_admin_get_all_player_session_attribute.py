import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_get_all_player_session_attribute
from accelbyte_py_sdk.api.lobby.models import ModelsGetAllPlayerSessionAttributeResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_get_all_player_session_attribute(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
