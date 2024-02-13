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
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "8CIlsVj2YQXr2IhK", "country": "pjEkPCGh4JMEg0Fi", "dateOfBirth": "GcHjO6JuQZpyS69e", "displayName": "8YE0E0VYJwcoEkvB", "languageTag": "HEuTNezWkp69XDW3", "uniqueDisplayName": "qRBem4W8lVqXxNdI", "userName": "MQdlF0VF1CqCqZGb"}'
"""

result, error = admin_update_my_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
