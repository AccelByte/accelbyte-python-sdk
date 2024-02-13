import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_forgot_password_v3
from accelbyte_py_sdk.api.iam.models import ModelForgotPasswordRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelForgotPasswordRequestV3
email_address: str
language_tag: str

Example: '{"emailAddress": "MmTrAZQNx7OFbWpk", "languageTag": "E0gu4pxvLql4VexF"}'
"""

result, error = public_forgot_password_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
