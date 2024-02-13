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

Example: '{"AuthType": "nC5xkErnqRMKEXpf", "Country": "O2ROufJD1xFbVIPY", "DisplayName": "5l52TQvPvXLW76aq", "LoginId": "DDop2nkuEW01jRu6", "Password": "jyITEkdZ4EmVsZex", "PasswordMD5Sum": "br2No9SlfUcKmkz2"}'
"""

result, error = create_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
