import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_upgrade_headless_account_v3
from accelbyte_py_sdk.api.iam.models import (
    ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
)
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
unique_display_name: str
validate_only: bool

Example: '{"code": "rAC9mSbCH8BxqiHk", "country": "Dzu7003pctZwk2sr", "dateOfBirth": "feiUfbkHveVjqbfa", "displayName": "JCugYYCYXJ9Gih5n", "emailAddress": "nH9dEWxvpVhqNsVP", "password": "xoSyZf2eRtiGFqwC", "uniqueDisplayName": "qXz3VJ4fPkHK0Vj4", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
