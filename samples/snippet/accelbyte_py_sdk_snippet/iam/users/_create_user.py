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

Example: '{"AuthType": "NSx4cwHVBz8eILLU", "Country": "G7yFHyHMSKLYfM5Z", "DisplayName": "7xeARetxPie2VZDp", "LoginId": "bwJLxx3bIfx5ac9O", "Password": "eu7HfBheBeSpFuHF", "PasswordMD5Sum": "yYUvJKAksZ9u0WI2"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
