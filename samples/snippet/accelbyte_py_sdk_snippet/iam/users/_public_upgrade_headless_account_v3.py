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

Example: '{"code": "JZ8YKHdueJ1r1ils", "country": "R6vf9fu8D4FixmYs", "dateOfBirth": "hMS7aKZLQPA7qqbX", "displayName": "c0xDPezR8nIhlg8z", "emailAddress": "RlXQUSp4WVGpikjV", "password": "rBX94gIc6Cj8Bi56", "uniqueDisplayName": "UExyTLSnyGW9gRBV", "validateOnly": false}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
