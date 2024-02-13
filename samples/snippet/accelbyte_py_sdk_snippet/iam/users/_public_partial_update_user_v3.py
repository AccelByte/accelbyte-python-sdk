import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_partial_update_user_v3
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

Example: '{"avatarUrl": "M9KFIRRfDdwM73ni", "country": "YgLiPpZA5hSVUXMh", "dateOfBirth": "eAVf0S6TD0dY9yrR", "displayName": "rcQuY8RNxyAzAbWZ", "languageTag": "PpTfeFend9hqGOrd", "uniqueDisplayName": "CLfuLjnCL960JM76", "userName": "OT8JGgwOrXaT9pU7"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
