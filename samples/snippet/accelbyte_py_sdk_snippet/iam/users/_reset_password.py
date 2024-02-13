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

Example: '{"Code": "YDvb0d1rly96CJf3", "LoginID": "uDPTFS6fPXBFthCl", "NewPassword": "9lkPldeA1h78W15n"}'
"""

result, error = reset_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
