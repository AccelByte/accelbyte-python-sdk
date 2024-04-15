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

Example: '{"Code": "Jo9kSPkeBWgLQgvX", "LoginID": "4xMPtLbvugg3MY6t", "NewPassword": "qmE6t34GJRRQEUjq"}'
"""

result, error = reset_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
