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

Example: '{"avatarLargeUrl": "vcvWyShLJQxb7hSt", "avatarSmallUrl": "AyE7YxQJAn9exH4v", "avatarUrl": "2N7ANSsAa04QSmJC", "customAttributes": {"0AR9egry7QxWjwVf": {}, "PZRBcc0miIfk1pc2": {}, "oNuxs1hD48AvahEQ": {}}, "dateOfBirth": "1982-08-16", "firstName": "w7cknTqEa7CTf1hr", "language": "yR", "lastName": "6iSw8Q0HT5frgfcQ", "privateCustomAttributes": {"dRH6VKTOGsQMfl17": {}, "wa2BthXGLp3Xamo1": {}, "l9dnU321AY0e3g5r": {}}, "timeZone": "Thlgr355k1W1uJ44"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
