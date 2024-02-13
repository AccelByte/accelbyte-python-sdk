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

Example: '{"filters": [{"filter": "vJXSLl3kFFryJWVn", "note": "snrtdK1zrQSGbJEE"}, {"filter": "oFQuwkMbZqWMBwIt", "note": "FtAkcOJ887GLCE59"}, {"filter": "6cPaIkfI46jZHuaG", "note": "Q1HUbio7XwVjvYdN"}]}'
"""

result, error = admin_add_profanity_filters(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
