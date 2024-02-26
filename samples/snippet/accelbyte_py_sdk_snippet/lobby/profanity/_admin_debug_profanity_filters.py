import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_debug_profanity_filters
from accelbyte_py_sdk.api.lobby.models import ModelsDebugProfanityFilterRequest
from accelbyte_py_sdk.api.lobby.models import ModelsProfanityFilter
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsDebugProfanityFilterRequest
text: str

Example: '{"text": "KFVlZt5d0Z95s4C8"}'
"""

result, error = admin_debug_profanity_filters(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
