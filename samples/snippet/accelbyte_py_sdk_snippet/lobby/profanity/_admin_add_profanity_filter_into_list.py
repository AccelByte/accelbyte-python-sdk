import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_add_profanity_filter_into_list
from accelbyte_py_sdk.api.lobby.models import (
    ModelsAdminAddProfanityFilterIntoListRequest,
)
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminAddProfanityFilterIntoListRequest
filter_: str
note: str

Example: '{"filter": "9DF91w6W26WPO2pv", "note": "B9kY2DW0hhtoADnV"}'
"""

result, error = admin_add_profanity_filter_into_list(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
