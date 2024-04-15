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

Example: '{"avatarUrl": "dy5p9t5QTuhukkb2", "country": "3TGcvjwFhAP7wRIt", "dateOfBirth": "xtD55bM3NzheZQuy", "displayName": "9cN7tDhNQr5ubr0a", "languageTag": "aDSpbu8qNo6y65Af", "skipLoginQueue": true, "uniqueDisplayName": "9wDjSlwgxOpFOACr", "userName": "jNsO5BZMs6WIAzNQ"}'
"""

result, error = admin_update_my_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
