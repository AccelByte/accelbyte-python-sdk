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

Example: '{"attributes": {"gnAkj5BGxAXomWg6": "IrqLWgmWS9nU5Wk9", "WT968nzSTW05AtUZ": "vYlPuigmicClmOKU", "n7zeO03bc2ROTVhi": "owwRmbEHlzlejvgX"}}'
"""

result, error = admin_set_player_session_attribute(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
