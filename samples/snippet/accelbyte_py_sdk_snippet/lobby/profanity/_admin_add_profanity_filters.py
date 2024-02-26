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

Example: '{"filters": [{"filter": "S84cVqFBBz4i1ymQ", "note": "9XgdbNXcdJG3yN5k"}, {"filter": "hqlfsPDRekaY64O9", "note": "34eeS2dSfh2GIOd4"}, {"filter": "icaM1OhuBom7YU8Z", "note": "b4HfKYIgggwiAzND"}]}'
"""

result, error = admin_add_profanity_filters(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
