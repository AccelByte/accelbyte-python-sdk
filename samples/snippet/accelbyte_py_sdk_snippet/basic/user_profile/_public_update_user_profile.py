import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_update_user_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfileInfo
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

Example: '{"avatarLargeUrl": "LJWsesAcgXVI39b2", "avatarSmallUrl": "7Nd3oOV9QMkuf7zV", "avatarUrl": "NOJTsjEhu35rgiOQ", "customAttributes": {"XGFubhdijRZuMG6t": {}, "m2B2REE5smBtPiSr": {}, "nqLqNcwYihoPId8L": {}}, "dateOfBirth": "1992-10-17", "firstName": "4DXiKInmefYEMu7S", "language": "iBV-tGuX-jx", "lastName": "oCZP2dD0tdLJKrx3", "privateCustomAttributes": {"UTEXxrgQ601FYjBD": {}, "ern48cXLH12guYpH": {}, "JvHhVtQjVSkDfcsZ": {}}, "timeZone": "Sv4QtuD45gPYDZIt", "zipCode": "rJbwrirNEfU7QqWa"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
