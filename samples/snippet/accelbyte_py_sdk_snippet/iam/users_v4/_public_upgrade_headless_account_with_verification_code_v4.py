import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    public_upgrade_headless_account_with_verification_code_v4,
)
from accelbyte_py_sdk.api.iam.models import AccountUserResponseV4
from accelbyte_py_sdk.api.iam.models import (
    AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4,
)
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
reach_minimum_age: bool
unique_display_name: str
username: str
validate_only: bool

Example: '{"code": "wLKZdAc5k4hWuPSU", "country": "rpdX7J0YNXY3erOL", "dateOfBirth": "enH6wiPcmlrqR5vX", "displayName": "xLRwNdL7JPA1wcW7", "emailAddress": "OowC24W8es0Ys7y0", "password": "wC52iZ94Db6iQt6y", "reachMinimumAge": false, "uniqueDisplayName": "zJcuQrF6PfYyaSFw", "username": "WdXOTL47ZyUdr5XY", "validateOnly": false}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
