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

Example: '{"avatarLargeUrl": "ZpML6TFe5AI6LbX7", "avatarSmallUrl": "98Ckrqfy6Tci0YSX", "avatarUrl": "D3LAFFT50DFsLb1O", "customAttributes": {"E8l5PntSgMbN5oG5": {}, "rNwt9DPS17ABZQgs": {}, "HsGA5xrQwYP113Pc": {}}, "dateOfBirth": "1976-03-13", "firstName": "Q1b2zmUrjtIynqES", "language": "IUr-731", "lastName": "3DGlrhuTZWHPFFHa", "privateCustomAttributes": {"oRGmUIlfGe9tzTos": {}, "a5dUj9J3fQLCm7dL": {}, "XlxTpkQ4cwPkKduf": {}}, "timeZone": "jOMHq5ywiC2a9XVw", "zipCode": "hWAv8Wc4asdDGruv"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
