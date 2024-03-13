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

Example: '{"chosenNamespaces": ["6OVcKfNpkSgMGb0C", "96LrAcOaN3hy5a8o", "ITEqdoxgGq9i5yav"], "oneTimeLinkCode": "6fSXFCLSlGVSAWvU"}'
"""

result, error = link_headless_account_to_my_account_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
