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

Example: '{"AuthType": "Zto6Xff28T2gEi98", "Country": "rV9V8umr6QVb3JN5", "DisplayName": "IxbkhnHsmtbHM327", "LoginId": "yIsTnhVSDZucsrW0", "Password": "b5a4oKICBoKXlccB", "PasswordMD5Sum": "Wma2YEMmzVVFXzKc"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
