import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_verify_headless_account_v3
from accelbyte_py_sdk.api.iam.models import ModelUpgradeHeadlessAccountV3Request
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpgradeHeadlessAccountV3Request
email_address: str
password: str

Example: '{"emailAddress": "OFsjEwTpajNz486U", "password": "srhXzNVchXkOG27C"}'
"""

result, error = public_verify_headless_account_v3(
    body=body,
    need_verification_code=need_verification_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
