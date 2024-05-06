import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_create_user_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfileCreate
from accelbyte_py_sdk.api.basic.models import UserProfileInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileCreate
avatar_large_url: str
avatar_small_url: str
avatar_url: str
custom_attributes: Dict[str, Any]
date_of_birth: str
first_name: str
language: str
last_name: str
time_zone: str

Example: '{"avatarLargeUrl": "WmyLvqF04N9HtYnQ", "avatarSmallUrl": "gowdFBXEeYH1c6el", "avatarUrl": "RF7OfJp9ZROk4TKk", "customAttributes": {"auuyppPuB1uYxsL6": {}, "cShmr284FENtzAVn": {}, "Iq91G3VXO9EIfSRm": {}}, "dateOfBirth": "1980-12-17", "firstName": "iDySkB3m8yzGODbB", "language": "Zb_pVBf_SL", "lastName": "HXp0K5CdpPq9Z9F6", "timeZone": "BGmUjQxmSO8uUBEN"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
