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

Example: '{"avatarUrl": "tBqqdThx4Mv8IVsp", "country": "5a9YOqeHqn4ENn9f", "dateOfBirth": "DKJua6UnHfCNRixI", "displayName": "vc2EHtdSwT0le7Ug", "languageTag": "rrq3uDkJ4hcs98Tl", "uniqueDisplayName": "eNWtDpKDmJviRwuK", "userName": "6Q4eH9LX0HsSnwnA"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
