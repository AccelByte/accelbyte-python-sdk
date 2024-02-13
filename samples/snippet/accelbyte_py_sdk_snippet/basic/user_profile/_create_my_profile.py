import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import create_my_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateCreate
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfilePrivateCreate
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

Example: '{"avatarLargeUrl": "E4mcjCctpQwoXT3R", "avatarSmallUrl": "3a1rCo2tPMh6CMj1", "avatarUrl": "RmPhYssxXuOerry9", "customAttributes": {"ywJOkeadFX1IZHcJ": {}, "kMXv37c5022BaJgJ": {}, "iwUDzFqRjJ6gq9Bu": {}}, "dateOfBirth": "1998-03-01", "firstName": "i7fU5yKRXh0KUNTs", "language": "yMc-jFcK_BG", "lastName": "bW67ZAHtGnbJiUpg", "privateCustomAttributes": {"y1KKDlq2ZEfuTtJj": {}, "dCz6e7mr6fXHu2HZ": {}, "a4qC7qhE4YGEdGjb": {}}, "timeZone": "bc5NRGuH6AIIq0v5"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
