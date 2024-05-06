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

Example: '{"AuthType": "tZBq01UdLrhHpwfI", "Country": "cuK0mfO3eO9NMUCF", "DisplayName": "c3vNa01kdytsAZcI", "LoginId": "nsKc6n5lyqQ8hTLb", "Password": "9wVWFR1bGeq7EZ1D", "PasswordMD5Sum": "noPK2zOnj9nua1dY"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
