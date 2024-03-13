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

Example: '{"avatarLargeUrl": "v28mYNYMsUWoO0W6", "avatarSmallUrl": "eDHNnGPldXvD3k2r", "avatarUrl": "M23h5Ek81ErfLvXl", "customAttributes": {"7gfgov2JfOCZJoXv": {}, "ePOK2dLm3Bo8cBey": {}, "5JkAsfMOHSomhFFY": {}}, "dateOfBirth": "1975-07-20", "firstName": "7G2O2ULUiOdTqwS7", "language": "eAl", "lastName": "fop6rLpyEIrPWhKM", "privateCustomAttributes": {"cvQpT5X7Gm1a6odY": {}, "bzpGlV55v0wXNaCg": {}, "KgpzI7Z9oZtyDJ57": {}}, "status": "INACTIVE", "timeZone": "cyzxDralod08fCul", "zipCode": "QJ5FSQsevyux2qE5"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
