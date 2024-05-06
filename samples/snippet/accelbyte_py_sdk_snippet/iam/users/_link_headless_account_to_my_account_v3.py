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

Example: '{"chosenNamespaces": ["X1eTs2baZDwLnmW4", "nSVTUqz2bZD3Q3e7", "IMcZS4fEjoFAyoVu"], "oneTimeLinkCode": "OXUgk0k5zO8aKTQA"}'
"""

result, error = link_headless_account_to_my_account_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
