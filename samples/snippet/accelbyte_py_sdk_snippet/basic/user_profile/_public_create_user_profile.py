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

Example: '{"avatarLargeUrl": "VE1Ah7UF9vNIi1cQ", "avatarSmallUrl": "RRFllIGj9iStxyua", "avatarUrl": "k8GonOrCKgcbJ6a3", "customAttributes": {"zfKodqBICrRpQhGu": {}, "i81ly2OYwqKSPb79": {}, "faTxpc0LO71pG0AB": {}}, "dateOfBirth": "1986-02-14", "firstName": "Wl6I22VN1xVpYSsZ", "language": "ZL_HtcK_986", "lastName": "NxHVs2TSe2r3pYEu", "timeZone": "uEHKG9OIWSmTLuhI"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
