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

Example: '{"AuthType": "BeVrCGaz14g50izk", "Country": "JwsZEGeywEnD8lnQ", "DisplayName": "Fol1GwL0rR5DcQuj", "LoginId": "vJfUt5HMwcKYJLPD", "Password": "Qult59XiO2Rt0QTq", "PasswordMD5Sum": "MBtWrEVH1M83EHfg"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
