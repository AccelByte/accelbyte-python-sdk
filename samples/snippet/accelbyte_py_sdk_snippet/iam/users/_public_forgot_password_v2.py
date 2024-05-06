import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_forgot_password_v2
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequest

"""
body:
Definition: ModelSendVerificationCodeRequest
context: str
language_tag: str
login_id: str

Example: '{"Context": "ZYZU8GyaSi9WtdaU", "LanguageTag": "TgEcxBNrp0eALojl", "LoginID": "oHsS9HvoX7etaPHq"}'
"""

result, error = public_forgot_password_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
