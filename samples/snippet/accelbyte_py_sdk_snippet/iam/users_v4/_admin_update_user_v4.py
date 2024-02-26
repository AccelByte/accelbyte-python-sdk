import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_v4
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

Example: '{"avatarUrl": "hKocKfYhNRTssMGr", "country": "RMym85NorU94rjXC", "dateOfBirth": "GzXyFizzv3VAwaGy", "displayName": "gLcZfUt7t8kGJ0Fv", "languageTag": "9LmvbMhiH9kzkNvM", "skipLoginQueue": true, "uniqueDisplayName": "yFJvMTTs2VvRaR09", "userName": "4BxPVfPl7k60bq3l"}'
"""

result, error = admin_update_user_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
