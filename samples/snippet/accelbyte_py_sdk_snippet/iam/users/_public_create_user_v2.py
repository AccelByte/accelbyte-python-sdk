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

Example: '{"AuthType": "cVnc7QG6LArTsKdw", "Country": "HAKKNmhZSAoqeiHf", "DisplayName": "vN5TZ0FXQdNi42Xc", "LoginId": "xKRSq5fWy4wwMJJH", "Password": "T7q6Z8ENrGs2n72y", "PasswordMD5Sum": "Dj39XBSgIHY0Do0C"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
