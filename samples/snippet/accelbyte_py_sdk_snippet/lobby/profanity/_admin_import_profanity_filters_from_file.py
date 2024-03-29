import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_import_profanity_filters_from_file
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: List[int]

Example: '[81, 45, 74]'
"""

result, error = admin_import_profanity_filters_from_file(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
