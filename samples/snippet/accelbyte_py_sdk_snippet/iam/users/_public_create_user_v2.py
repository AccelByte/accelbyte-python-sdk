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

Example: '{"AuthType": "q2qAzhzzWzcyDCNR", "Country": "MwT0kjt7KYwCYYH1", "DisplayName": "XEdaj0BGCXr1choD", "LoginId": "vMBHH5AkidRzUCu9", "Password": "CRxPEoSuV4HS9khh", "PasswordMD5Sum": "k5hMO6hF1swma1IZ"}'
"""

result, error = public_create_user_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
