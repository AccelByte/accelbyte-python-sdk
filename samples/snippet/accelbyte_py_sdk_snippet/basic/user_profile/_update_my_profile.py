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

Example: '{"avatarLargeUrl": "PcjfBR6NGM41Acoh", "avatarSmallUrl": "nmh9Hrzkkbb8rE9B", "avatarUrl": "msoA7XqTi53gjtBv", "customAttributes": {"bZ0PGNb3zm3wTEbX": {}, "1QNQGW3g4rkYcXs6": {}, "eBGXEJiwimx1ukEc": {}}, "dateOfBirth": "1991-08-12", "firstName": "XW7BXboP2PsHWe8U", "language": "BLD", "lastName": "YfBnPlOpXHjiPNqQ", "privateCustomAttributes": {"zF6pD5zPY8opdzgI": {}, "0Q8dZ6l9hFEgLSRi": {}, "7UQHdEOhjjAHcl8M": {}}, "timeZone": "ejCjmSKzi8PItFW1", "zipCode": "B1IMqvqYEjnls0Yj"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
