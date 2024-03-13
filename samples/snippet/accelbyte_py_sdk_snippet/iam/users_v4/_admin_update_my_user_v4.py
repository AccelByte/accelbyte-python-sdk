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

Example: '{"avatarUrl": "ke79jNrRpVyqMZJV", "country": "HyUE76K4I5kVYOVI", "dateOfBirth": "vnyAlFOSa4lgs9Ev", "displayName": "zgVp5perR1pelYkS", "languageTag": "hFWitP73Ghs7mEKM", "skipLoginQueue": true, "uniqueDisplayName": "6T46QGigRuhWZS0y", "userName": "5FDnwVcl2mylbw5T"}'
"""

result, error = admin_update_my_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
