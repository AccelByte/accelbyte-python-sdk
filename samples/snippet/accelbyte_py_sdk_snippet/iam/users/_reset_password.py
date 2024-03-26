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

Example: '{"Code": "1ZdJX1B305QU2lC8", "LoginID": "sMu9RxGsa0bKSPAu", "NewPassword": "a0ZoYzxfZBlU2XGp"}'
"""

result, error = reset_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
