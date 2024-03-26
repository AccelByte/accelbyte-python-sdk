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

Example: '{"code": "URJQZL7HdO9zfLzG", "country": "kEuOc5TtF9SmKM1z", "dateOfBirth": "4JMFr1xJrDsYg7TO", "displayName": "qJoFI3CRBcU7Gkec", "emailAddress": "B5L2VGW4iHSxNm8p", "password": "4SOiyWCapQiNLFIY", "uniqueDisplayName": "cvCu1lQgZi2Glp84", "validateOnly": false}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
