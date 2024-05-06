import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_my_user_v4
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

Example: '{"avatarUrl": "zvlUz1yliTetOi6r", "country": "MXUzQwO9Gh57FacG", "dateOfBirth": "CCorZGmo5ohqTiXN", "displayName": "m7whXNiQE8titG9H", "languageTag": "d6VdNG5AhD4X7rfn", "skipLoginQueue": true, "uniqueDisplayName": "eLmHxebb8QmAxMf2", "userName": "RGd8T8WP27JeVRPx"}'
"""

result, error = admin_update_my_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
