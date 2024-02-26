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

Example: '{"code": "l4TQCh0o8Bf9KBsr", "country": "L2oixpfUVhewMmF2", "dateOfBirth": "VGvxfh6PYI3F7rAt", "displayName": "cSIE3MNYyi6OIML0", "emailAddress": "JqDvMi6gjLrTd7t0", "password": "iaiJ0FHSa2HlIzDl", "reachMinimumAge": false, "uniqueDisplayName": "yOkcmEBVZqhFi07o", "username": "zA3uCeSRQf5wABpq", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
