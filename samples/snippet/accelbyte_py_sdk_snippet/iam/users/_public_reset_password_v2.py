import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_reset_password_v2
from accelbyte_py_sdk.api.iam.models import ModelResetPasswordRequest

"""
body:
Definition: ModelResetPasswordRequest
code: str
login_id: str
new_password: str

Example: '{"Code": "LfnuofAfJHynE4LD", "LoginID": "8yWg6oACTU5XJTct", "NewPassword": "1o22TA625KfxQdcM"}'
"""

result, error = public_reset_password_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
