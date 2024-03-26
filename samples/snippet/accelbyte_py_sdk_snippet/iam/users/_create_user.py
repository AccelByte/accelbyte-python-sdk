import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_user
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequest
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserCreateRequest
auth_type: str
country: str
display_name: str
login_id: str
password: str
password_md5_sum: str

Example: '{"AuthType": "Pwwmx1u8OZPhwCTX", "Country": "1u1EiR3k5nGLSd1D", "DisplayName": "k26k4BNP6C3S5fEq", "LoginId": "yqTPPiKWysCbQ0Fo", "Password": "kj2NQCkMFReMtHYy", "PasswordMD5Sum": "eMmwqDQxjBu5VnER"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
