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

Example: '{"avatarLargeUrl": "YtBMordbPmslIzrp", "avatarSmallUrl": "NxMP6RbF1r9vowjD", "avatarUrl": "Y8910zqPcDzsQ59d", "customAttributes": {"XDQS1ONlkT43unrj": {}, "IWMc0fDEh1mUTNIh": {}, "ROmK2QWxWfeUnQwV": {}}, "dateOfBirth": "1995-01-20", "firstName": "6esQxI2M9LhSnMAm", "language": "erG-899", "lastName": "FVbu9NhAUz4lC33w", "privateCustomAttributes": {"hd3HVH0NLhq9kxDB": {}, "WeiUvMxODlNkfnFb": {}, "3cAezki7Fz0UboHZ": {}}, "timeZone": "wef23jeoCLnovuYJ"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
