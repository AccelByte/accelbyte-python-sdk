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

Example: '{"AuthType": "UUQCsv6GRClBJ5l9", "Country": "G9ekbOmKBx8lq9P3", "DisplayName": "FG0VJFBVAT2GrlCC", "LoginId": "8kWqJ8Rd2JU9xewA", "Password": "jvIhia2FNNx2Xrpj", "PasswordMD5Sum": "RgrfuuaNvFMyUO99"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
