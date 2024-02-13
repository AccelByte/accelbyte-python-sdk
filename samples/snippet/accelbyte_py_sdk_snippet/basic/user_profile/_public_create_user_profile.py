import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_create_user_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfileCreate
from accelbyte_py_sdk.api.basic.models import UserProfileInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileCreate
avatar_large_url: str
avatar_small_url: str
avatar_url: str
custom_attributes: Dict[str, Any]
date_of_birth: str
first_name: str
language: str
last_name: str
time_zone: str

Example: '{"avatarLargeUrl": "87sJEQiVrg5Cwu2n", "avatarSmallUrl": "sXxbzIfvHF9lH0n3", "avatarUrl": "nXHM8HpMv1UBaHDn", "customAttributes": {"192mXUqVEqJuHc2F": {}, "dtUOww7t1xHJGVMf": {}, "7uhascQhXkIOQGsd": {}}, "dateOfBirth": "1973-06-01", "firstName": "mIUu1MhH1f4SWpao", "language": "sany_Ztmy", "lastName": "Akj6bEXvC3hiX8s1", "timeZone": "ljPSBORqrP6rQDPZ"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
