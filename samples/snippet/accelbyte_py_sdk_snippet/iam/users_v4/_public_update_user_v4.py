import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_v4
from accelbyte_py_sdk.api.iam.models import ModelPublicUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPublicUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "UQaPLGsbY6FeK6Iu", "country": "qydeicVDt1m01RoK", "dateOfBirth": "CbND2wlOFqd6Y8mL", "displayName": "SRRTi4rm6waZbbJM", "languageTag": "MwRzfrHAJuTNGofj", "uniqueDisplayName": "JuEBdxl2pcMVDdSd", "userName": "kPTyCfKHI9Yzmrpy"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
