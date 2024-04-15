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

Example: '{"avatarLargeUrl": "aI1pePEBCDm4rXOd", "avatarSmallUrl": "IWWv0tTEoYxllKi1", "avatarUrl": "yn48qgfVkH479kkj", "customAttributes": {"uECloeRqIzYgYdMD": {}, "NiTE9bmRhOkpRMrC": {}, "lnHeC20rJ2Wu2feY": {}}, "dateOfBirth": "1992-01-15", "firstName": "ttFH749Y4kKdJ5ys", "language": "xdo-395", "lastName": "CULDBHpMvRJ0CNim", "privateCustomAttributes": {"xWmZBet6t9oK3kUV": {}, "VDnZXGSFjHobv7Fc": {}, "Y4hTrLiU44YJgcD4": {}}, "status": "ACTIVE", "timeZone": "Gnhi6vzt9w5WefwO", "zipCode": "SbvnTg0jyhsfkxaS"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
