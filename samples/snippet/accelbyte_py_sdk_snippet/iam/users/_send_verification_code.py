import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import send_verification_code
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendVerificationCodeRequest
context: str
language_tag: str
login_id: str

Example: '{"Context": "uNAGbWVwomLSB1vc", "LanguageTag": "FnXILnc2TypyQI4G", "LoginID": "WEW9xM6KotcUlj7k"}'
"""

result, error = send_verification_code(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
