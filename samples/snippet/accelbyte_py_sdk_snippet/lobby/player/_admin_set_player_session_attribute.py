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

Example: '{"attributes": {"heIQorq9B9yrGNUA": "dEHhWuYyneo8o5dY", "US3cyX9qUrJ88Wq3": "O8lTN8wPB8FXBTaw", "xfMRixVavuyxisd1": "RXMg1iaL5L6hk4EO"}}'
"""

result, error = admin_set_player_session_attribute(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
