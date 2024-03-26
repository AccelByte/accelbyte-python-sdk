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

Example: '{"avatarLargeUrl": "pnnfFosW9M5jI187", "avatarSmallUrl": "u9HnIHvruyf5B2UM", "avatarUrl": "8oo02K847aRGNAwl", "customAttributes": {"p3eqLFW30DDbai2X": {}, "YpoqwFTBQX66VIPg": {}, "e28gqgsSH1wQDYY9": {}}, "dateOfBirth": "1971-07-05", "firstName": "44XeTlR8MPmNWC2K", "language": "zwwy_ia", "lastName": "OlwctgMhzVDc3C2W", "privateCustomAttributes": {"ahkpMSUYVVhcRnhh": {}, "4LZz92nGQK1IGTp7": {}, "uSxENP7qITQc3Woj": {}}, "timeZone": "FFYXEdrPreifM66j", "zipCode": "IJLRAbe0a8eqKgUE"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
