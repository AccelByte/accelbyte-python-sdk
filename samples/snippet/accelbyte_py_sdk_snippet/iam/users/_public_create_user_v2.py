import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_user_v2
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

Example: '{"AuthType": "fiDCEdYPPh4fJ7aJ", "Country": "o6cc9NbtLnapcBM3", "DisplayName": "D1dSS73KkNsLBGyM", "LoginId": "doQLbpQeDu3weFNg", "Password": "3MdD0hIkgI1HssP8", "PasswordMD5Sum": "75Tc5zOQdv5yjpEE"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
