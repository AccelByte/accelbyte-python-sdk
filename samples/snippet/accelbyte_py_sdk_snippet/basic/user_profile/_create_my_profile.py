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

Example: '{"avatarLargeUrl": "dEaP27GhrCyPcxNM", "avatarSmallUrl": "cINEHdBy3as0IemX", "avatarUrl": "61kdaODuGEobd37z", "customAttributes": {"usfqT5ygO3zgbB7E": {}, "ly4o36FRIjh5ERhu": {}, "ogyORcCGeymzbsDx": {}}, "dateOfBirth": "1978-06-05", "firstName": "vBODGt2XdKV7KS55", "language": "eXcd_Tm", "lastName": "lY7YxZQlRoTjw4Fi", "privateCustomAttributes": {"ihtSaFKXdG3metmY": {}, "zE90P9D0kqXRccFw": {}, "LVIjT75AHFev6xuh": {}}, "timeZone": "F36qUH7wdpcOMsh0"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
