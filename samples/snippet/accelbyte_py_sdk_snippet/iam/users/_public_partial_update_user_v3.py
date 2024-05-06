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

Example: '{"avatarUrl": "Vk4vP5UujdPKdVy3", "country": "WTe1O4xbK2XS8jv1", "dateOfBirth": "ou7RRck7WYmS9FAl", "displayName": "VUiOPJdFrhcgDWV0", "languageTag": "rpjUdDyTCakappD0", "uniqueDisplayName": "wIc9gXfMidHZsDyr", "userName": "gozuvCCYvC2lBDs5"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
