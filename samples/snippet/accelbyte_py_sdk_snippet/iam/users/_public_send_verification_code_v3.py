import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_send_verification_code_v3
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendVerificationCodeRequestV3
context: str
email_address: str
language_tag: str

Example: '{"context": "5Eyr8J803lvhRprk", "emailAddress": "BqdzrGtgbMJyLtpc", "languageTag": "2Adw8HZVRiq8IWZt"}'
"""

result, error = public_send_verification_code_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
