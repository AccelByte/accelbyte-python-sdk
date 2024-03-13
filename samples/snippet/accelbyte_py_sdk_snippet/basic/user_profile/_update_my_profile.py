import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_my_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo
from accelbyte_py_sdk.api.basic.models import UserProfileUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileUpdate
avatar_large_url: str
avatar_small_url: str
avatar_url: str
custom_attributes: Dict[str, Any]
date_of_birth: str
first_name: str
language: str
last_name: str
private_custom_attributes: Dict[str, Any]
time_zone: str
zip_code: str

Example: '{"avatarLargeUrl": "GWqcm7OoDmPP15bo", "avatarSmallUrl": "cBKMPm3F41f3UUMv", "avatarUrl": "9yMyWICDTXA0Nrkp", "customAttributes": {"B8KBDw2wHmvkZwlT": {}, "DJtdVrDvH6mkOzdH": {}, "9PWM1aubjLcd3AgG": {}}, "dateOfBirth": "1974-03-15", "firstName": "a0vaskQV54yirzvc", "language": "Ef-kxOz-yW", "lastName": "wPdsEwfGL8AUZLxS", "privateCustomAttributes": {"AoSwuP3zjhgNu6Ye": {}, "XlsXn1qF5bTARcIu": {}, "1oo40OhUU7V5kipR": {}}, "timeZone": "9NNdHBGj7GEldnzS", "zipCode": "AtHLR074osGlrnAZ"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
