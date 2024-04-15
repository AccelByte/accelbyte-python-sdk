import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_user_v3
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

Example: '{"avatarUrl": "cPM37MevA67w9iUA", "country": "Swj8iBIyhEzF8ZMc", "dateOfBirth": "K4o7Eoxu7lamyn5h", "displayName": "6PzdJ9LzVAJyCfvI", "languageTag": "gFgbiMkgXTP3QZvl", "uniqueDisplayName": "BT4KEm26QBSAwour", "userName": "QAsdUpbM1bvjFtkH"}'
"""

result, error = update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
