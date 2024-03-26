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

Example: '{"avatarLargeUrl": "CP63sSR66v74nv7n", "avatarSmallUrl": "dOXKhhtDxzbWEURh", "avatarUrl": "O8cwU6CNTApD4eOo", "customAttributes": {"44Fzp0zcpKPHYrvB": {}, "Jse7E0VPS6ZtBY7c": {}, "s138Xxhp0AtiUWNN": {}}, "dateOfBirth": "1996-02-02", "firstName": "2YfP1IQ8X4HTZvw6", "language": "ZX", "lastName": "cEHFkkFA9f9FoY3r", "privateCustomAttributes": {"Vy2fcjR2oC8M7EjS": {}, "pYEdMklr0jDXEVER": {}, "DG4PBBMc8caZWv3M": {}}, "timeZone": "CIvAzy52CvZkhtFM", "zipCode": "ZabzJglgMJml7xfS"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
