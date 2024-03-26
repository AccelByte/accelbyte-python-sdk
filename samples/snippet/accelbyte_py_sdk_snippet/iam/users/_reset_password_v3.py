import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import reset_password_v3
from accelbyte_py_sdk.api.iam.models import ModelResetPasswordRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelResetPasswordRequestV3
code: str
email_address: str
new_password: str

Example: '{"code": "tXpGz5SbpGBSI5i6", "emailAddress": "0mHviAvY4uogm4o0", "newPassword": "sIQ3PcfbbxMU2ZYP"}'
"""

result, error = reset_password_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
