import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "IuLRar5FTidZ5X93", "country": "kwQJmSdWrjH5IpWd", "dateOfBirth": "ECkEWwj8iVA0hHJF", "displayName": "QUOJmvYkmmvb366s", "languageTag": "vouAtYHyHmhmQFqi", "uniqueDisplayName": "3PVoDI2RvgwpvyNS", "userName": "uHuR1o2M0im2Gyyf"}'
"""

result, error = admin_update_user_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
