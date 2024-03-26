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

Example: '{"avatarLargeUrl": "Mujem9gW6IVCI9uU", "avatarSmallUrl": "wecCXitVYQ4FUq8q", "avatarUrl": "jM33OdVHt0xkbrFC", "customAttributes": {"nB7k8v7xtbtkjbiL": {}, "6FaU8A282wsyRmD9": {}, "V3M3xws2joeo6M4T": {}}, "dateOfBirth": "1983-04-25", "firstName": "W0Zn5N3BAYeINTAZ", "language": "Gbtn-WIYD-ID", "lastName": "l1rAQnBY8cs76saE", "privateCustomAttributes": {"QQRDe3y6Ba2Av6YI": {}, "M9sv9KNUg6kPxP8Y": {}, "ugAS8cYfLEHOl8X1": {}}, "timeZone": "Ho9CjuVz1FXqk41f"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
