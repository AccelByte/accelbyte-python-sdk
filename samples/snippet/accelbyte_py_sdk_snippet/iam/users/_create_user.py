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

Example: '{"AuthType": "CHKgRpRGKuviA4bO", "Country": "TP2X48JXQNP6fn6m", "DisplayName": "Tu2RMdKqM3RuFa1X", "LoginId": "E1HqJZP3uE2JmkKl", "Password": "51P8APHrTAcJquoi", "PasswordMD5Sum": "m5eTPH4feYpkFhOc"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
