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

Example: '{"AuthType": "BNmN2LDx47AjOvXL", "Country": "he0hAVQGKRQgb5Zb", "DisplayName": "H9Y4DLYI3SvhUi3K", "LoginId": "FhvctrMmN3evR677", "Password": "lci0rPLkC2NpDVD9", "PasswordMD5Sum": "QZCTHrqGGjEM5ubW"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
