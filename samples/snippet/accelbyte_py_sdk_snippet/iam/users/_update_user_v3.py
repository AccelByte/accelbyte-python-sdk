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

Example: '{"avatarUrl": "3FGDGMd6mdeVNMjD", "country": "fSnCPiUz03EszzDb", "dateOfBirth": "0DS2zCg4JsUhCE2U", "displayName": "GD5BdGJliMwt64TS", "languageTag": "94iDCNpMxsPabDw9", "uniqueDisplayName": "oKgstccjUBQCrCW6", "userName": "83RV6DwgYv5pubOL"}'
"""

result, error = update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
