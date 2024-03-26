import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_user_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfileAdmin
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileAdmin
avatar_large_url: str
avatar_small_url: str
avatar_url: str
custom_attributes: Dict[str, Any]
date_of_birth: str
first_name: str
language: str
last_name: str
private_custom_attributes: Dict[str, Any]
status: str
time_zone: str
zip_code: str

Example: '{"avatarLargeUrl": "J6y4k3rGua5Qb6jr", "avatarSmallUrl": "6QH2mj4dwO4Ic7Iq", "avatarUrl": "sBbpx7F5TzXRHs2h", "customAttributes": {"0BfRp7QUrVqxmjs7": {}, "guZ3ukYTVRRLpKdG": {}, "Cto9Durq1IYyTBrp": {}}, "dateOfBirth": "1998-06-23", "firstName": "bz23tbC0WTpZfSPC", "language": "iu-yGLJ-kF", "lastName": "2DE4YFjkAlKhIHqs", "privateCustomAttributes": {"stMhAXiIAOulMpIQ": {}, "85jUaND9pbtpjNuR": {}, "e9kYnkSOaI3060zP": {}}, "status": "ACTIVE", "timeZone": "LlnHLmczLTsKV2JG", "zipCode": "6TenX79WhpACqbVL"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
