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

Example: '{"attributes": {"Ver7GkFtuIP8YVwy": "DTxT5wLdxVV3agJ2", "mVStrSzdp7nHwO2F": "MRCW4ayAoIOhta6N", "gYsON7Leyt1sNvWH": "sYRcSopC1S5e0LUS"}}'
"""

result, error = admin_set_player_session_attribute(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
