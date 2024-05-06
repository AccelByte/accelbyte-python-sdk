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

Example: '{"avatarLargeUrl": "4IcrD4iVprp3GcHS", "avatarSmallUrl": "qYifGZQcUhPJnDGk", "avatarUrl": "XWzDMD6RQ1pKwQdn", "customAttributes": {"Q4LZJVVz5EB4mKde": {}, "bki0TIouWXiX7JYp": {}, "2dXUevEkLBRfGoPN": {}}, "dateOfBirth": "1996-04-01", "firstName": "iSfQdprBbgx1rMpL", "language": "vyP-tYOv", "lastName": "KEo7SVR7l1xuQuLi", "privateCustomAttributes": {"0U7HnFfsOhArwjJY": {}, "7UHme2R7LzHg1bnn": {}, "IHwonUFvLs8Dofzk": {}}, "timeZone": "1fP1szvm74Q1MI6T", "zipCode": "BCfCZX5V8tkg0Mph"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
