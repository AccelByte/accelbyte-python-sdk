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

Example: '{"code": "eNm2lexXHc1b1POW", "country": "kio0FkvXmZWTSAni", "dateOfBirth": "3p9L9Uu72FS4JHYy", "displayName": "QknNMvYCpOEgFsVO", "emailAddress": "LoZM7QBn8REEEHBA", "password": "JpBu0eR9hzemYi48", "reachMinimumAge": true, "uniqueDisplayName": "Wmskvo71L9IJLLNv", "username": "hb7UtNXbCP1DGQEr", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
