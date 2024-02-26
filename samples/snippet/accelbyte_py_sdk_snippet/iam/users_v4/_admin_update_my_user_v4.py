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

Example: '{"avatarUrl": "0faqbSRpkBjpv76w", "country": "ZEOHu1W80phY3FSf", "dateOfBirth": "yX0WTlnpXO4lxCK0", "displayName": "bGYmFThCHZuE5sxG", "languageTag": "MQViXZl0SqSBOtJG", "skipLoginQueue": false, "uniqueDisplayName": "DLQdNdvoRMF6XlTf", "userName": "nN3VGnJJ0IpwF4W7"}'
"""

result, error = admin_update_my_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
