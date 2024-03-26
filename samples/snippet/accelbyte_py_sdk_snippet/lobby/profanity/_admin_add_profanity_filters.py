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

Example: '{"filters": [{"filter": "Jmjfzr4OlwKYyzP3", "note": "ROLY3wpEy89xYiWJ"}, {"filter": "KTxq6csMzja1ZIZN", "note": "wvnUR5WMyXhm9kj7"}, {"filter": "FVMhdNczj53BEW1r", "note": "coWADOoY2e8nevXA"}]}'
"""

result, error = admin_add_profanity_filters(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
