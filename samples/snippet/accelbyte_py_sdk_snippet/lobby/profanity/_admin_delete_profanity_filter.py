import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_delete_profanity_filter
from accelbyte_py_sdk.api.lobby.models import ModelsAdminDeleteProfanityFilterRequest
from accelbyte_py_sdk.api.lobby.models import ModelsProfanityFilter
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminDeleteProfanityFilterRequest
filter_: str

Example: '{"filter": "anPjFR6QHMe09PMb"}'
"""

result, error = admin_delete_profanity_filter(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
