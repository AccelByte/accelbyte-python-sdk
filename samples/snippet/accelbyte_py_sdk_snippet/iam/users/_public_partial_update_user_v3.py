import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_partial_update_user_v3
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

Example: '{"avatarUrl": "PdQwBC9G137Yj5Zo", "country": "pKTtA0PUtWtSfqGt", "dateOfBirth": "U7LySrNO2IoXmM6w", "displayName": "6obZhxgpafdncLsB", "languageTag": "QX0wTerOyeM3cHUw", "uniqueDisplayName": "xJEtc7FZoSxZF5lq", "userName": "N8Zs0IvSiHfVguPj"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
