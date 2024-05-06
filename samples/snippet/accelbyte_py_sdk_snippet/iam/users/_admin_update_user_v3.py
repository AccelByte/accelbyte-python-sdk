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
skip_login_queue: bool
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "tztZNxfgrAXPLU0y", "country": "zqW6LT13atf7GfyK", "dateOfBirth": "UaSIiQQpVVImQ6Ha", "displayName": "jO88VkczWuh8c0UO", "languageTag": "cviHVdCxpZp5Fh50", "skipLoginQueue": true, "uniqueDisplayName": "eFeHqVT7n5SAjXG4", "userName": "6LSfxG9g28pgHaFy"}'
"""

result, error = admin_update_user_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
