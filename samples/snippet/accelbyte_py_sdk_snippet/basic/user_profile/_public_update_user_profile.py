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

Example: '{"avatarLargeUrl": "gPCPwFonnEckjxWM", "avatarSmallUrl": "tSNRZGKlL3rK4CJP", "avatarUrl": "KHpK2FzxHaPFeDJG", "customAttributes": {"UWaT3DZfH1eEP1pa": {}, "la32YKsTWyRflxCa": {}, "V5OSl9WlZ7GduCW7": {}}, "dateOfBirth": "1985-09-03", "firstName": "rUVZ4VzL3LiM7Rbl", "language": "AaJ_cCOo", "lastName": "ZuCnaybRSzkH5aBF", "privateCustomAttributes": {"P4yUJ8S8gpB9chLr": {}, "3VYbyzeaHOEiBe8S": {}, "mLjYGsMQj7tZI7A4": {}}, "timeZone": "Sjo0nEZ0WYih5Fy3", "zipCode": "sW5KWz3oleDRKDsn"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
