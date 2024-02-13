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

Example: '{"attributes": {"6CdePkRrk7tAnTKL": "1ReYeN64KpTyk0MH", "OAXRhMXdCeLykCHa": "N3qpiyqX24tQb9jh", "AXD9Roa5JpRTFOdP": "RC1Qevh1xgrGwaQP"}}'
"""

result, error = admin_set_player_session_attribute(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
