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

Example: '{"Code": "76eCdw7HFQLA0YmN", "LoginID": "fPHejGhFIHoyD0yr", "NewPassword": "NahpRmljFQW8ZREr"}'
"""

result, error = reset_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
