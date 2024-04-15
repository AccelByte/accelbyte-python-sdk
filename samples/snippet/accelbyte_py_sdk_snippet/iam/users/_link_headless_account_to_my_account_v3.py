import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import link_headless_account_to_my_account_v3
from accelbyte_py_sdk.api.iam.models import ModelLinkHeadlessAccountRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelLinkHeadlessAccountRequest
chosen_namespaces: List[str]
one_time_link_code: str

Example: '{"chosenNamespaces": ["wH5KlO6BlrKNqnft", "r0Tu8RIwwoQQ9IEu", "cRbvunLXMpE0VaN5"], "oneTimeLinkCode": "ozTsLFijZaGtMJA1"}'
"""

result, error = link_headless_account_to_my_account_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
