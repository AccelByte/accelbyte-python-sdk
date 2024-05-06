import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import reset_password
from accelbyte_py_sdk.api.iam.models import ModelResetPasswordRequest

"""
body:
Definition: ModelResetPasswordRequest
code: str
login_id: str
new_password: str

Example: '{"Code": "iuet85r6HF48IoT7", "LoginID": "T1JG7gsy1kt44rbE", "NewPassword": "F5huGbMlBfwkbzjH"}'
"""

result, error = reset_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
