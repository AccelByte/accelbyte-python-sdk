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

Example: '{"avatarLargeUrl": "ewKd5LRKyA8yIUDN", "avatarSmallUrl": "SFTAzNqLYc0roIch", "avatarUrl": "uVl6TVMAiIVDeqJr", "customAttributes": {"hVtdcAkDL1VOPOvH": {}, "8s4v7G72udmmS2Te": {}, "MBXWf6gXk04s77Em": {}}, "dateOfBirth": "1996-01-30", "firstName": "0cTO3p5FYQ7YG7VG", "language": "qcED-NuNM", "lastName": "utDGmHY2glfbevmW", "privateCustomAttributes": {"ALHSsKsikeZWcqsd": {}, "yMEXeV2IcbK3XxMM": {}, "pZXa9FcYQGY19eYB": {}}, "status": "ACTIVE", "timeZone": "5DInIDz1gJWD0cgm", "zipCode": "zXYNmQ1e0QlEDSzl"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
