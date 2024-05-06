import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_v4
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

Example: '{"avatarUrl": "busowEdbqB3iLSYQ", "country": "gEsmPjwkkIsGPVma", "dateOfBirth": "IxJVjs7VhSu2NUVv", "displayName": "uYSIeRXaEoastnJS", "languageTag": "GZTY1lHxw0OJBO6n", "uniqueDisplayName": "tfK0YnVoBVz0BRTA", "userName": "dc1PSs6O6cccZOni"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
