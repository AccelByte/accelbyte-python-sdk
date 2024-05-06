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

Example: '{"code": "D1nDEYWCEPHf4xWg", "emailAddress": "PR4ztpNssMIg18sR", "newPassword": "9TndcFrF7wNouUSt"}'
"""

result, error = reset_password_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
