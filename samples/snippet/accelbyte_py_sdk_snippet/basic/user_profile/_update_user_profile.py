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

Example: '{"avatarLargeUrl": "Hhgc2667yG0Kzc1t", "avatarSmallUrl": "VUsMu7hwVYVxgk5F", "avatarUrl": "8UURryRgEf4q7O7d", "customAttributes": {"MYy2Qmimd2Js7652": {}, "aOWwLEhrpCU0tDBl": {}, "1St1VjJxtCoZZDYs": {}}, "dateOfBirth": "1997-09-03", "firstName": "2ZtSgjwqiz6vex5J", "language": "Ksw", "lastName": "FlzIUrKTP6kaZqYw", "privateCustomAttributes": {"14XBzGXk5wawKgKA": {}, "e5G52tdztcW1BxiH": {}, "QrZHO1MWu9Pm0WxR": {}}, "status": "INACTIVE", "timeZone": "L9cppmzTeeVaK8tR", "zipCode": "qImzggQRS3YIULTx"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
