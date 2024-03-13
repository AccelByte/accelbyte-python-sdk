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

Example: '{"filters": [{"filter": "GOgMPettnv2wIrvv", "note": "qEi3qiIijKrG05CL"}, {"filter": "w6DkdFafPRPlma5n", "note": "pl37jnC3NBjHpZw0"}, {"filter": "AlA0HzuWkMTWrf2u", "note": "3ItxcVVvQr1j6iyl"}]}'
"""

result, error = admin_add_profanity_filters(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
