import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import admin_get_user_profile_public_info_by_ids
from accelbyte_py_sdk.api.basic.models import UserProfileBulkRequest
from accelbyte_py_sdk.api.basic.models import UserProfilePublicInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileBulkRequest
user_ids: List[str]

Example: '{"userIds": ["jWntrh17JsGlSzzT", "nvKLBEQcf2w5SHOG", "NAV8eFiNERjcrqbv"]}'
"""

result, error = admin_get_user_profile_public_info_by_ids(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
