import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_set_player_session_attribute
from accelbyte_py_sdk.api.lobby.models import ModelsSetPlayerSessionAttributeRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsSetPlayerSessionAttributeRequest
attributes: Dict[str, str]

Example: '{"attributes": {"6nofaEbrfmzAirgJ": "v1CJxgunM4FqUfO5", "eEv6Vp9FfvNzTXrp": "EvEilWEoLoH6Wbv2", "Z37LSidIFK3V8pE3": "Cbj7wkVjzvdnHPSh"}}'
"""

result, error = admin_set_player_session_attribute(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
