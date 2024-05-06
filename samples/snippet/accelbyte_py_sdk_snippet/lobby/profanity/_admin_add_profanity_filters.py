import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_add_profanity_filters
from accelbyte_py_sdk.api.lobby.models import ModelsAdminAddProfanityFiltersRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminAddProfanityFiltersRequest
filters: List[ModelsAdminAddProfanityFiltersFilterRequest]
Definition: List[ModelsAdminAddProfanityFiltersFilterRequest]
    filter_: str
    note: str

Example: '{"filters": [{"filter": "pzY8GhZ417d0VGzy", "note": "5yYciYdlWhrlRjuz"}, {"filter": "S2T0Te2mQw8UoFjm", "note": "6aR45EumvubzYYkr"}, {"filter": "8avehYf1Qu0teeNx", "note": "jwAdY4ZwtV25nji8"}]}'
"""

result, error = admin_add_profanity_filters(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
