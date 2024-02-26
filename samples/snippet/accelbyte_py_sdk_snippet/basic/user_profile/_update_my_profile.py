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

Example: '{"avatarLargeUrl": "dMrmO18FqUZ1H435", "avatarSmallUrl": "DQhHCwbyiR8dWtX8", "avatarUrl": "V6nYIIu8ivIv87Rg", "customAttributes": {"KimrhYrelkA1SAfM": {}, "u6r87oEJWkFcaVhI": {}, "byoXCgjidYkqphjX": {}}, "dateOfBirth": "1982-09-11", "firstName": "KMTIxr1b8tyeKmwY", "language": "pKcY", "lastName": "v4CK4t9sRq8Gm61u", "privateCustomAttributes": {"zxWh7sBHtX8qldNZ": {}, "qsZiaccSou91dFsq": {}, "zpT5Fza3iz1W5Tma": {}}, "timeZone": "NMeMJqrBhyrSDzcl", "zipCode": "2PlSx6d5caz1N0qi"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
