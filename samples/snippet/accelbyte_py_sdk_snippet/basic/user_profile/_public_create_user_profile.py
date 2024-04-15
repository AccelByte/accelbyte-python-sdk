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

Example: '{"avatarLargeUrl": "6YWWLWACMfjS9B3H", "avatarSmallUrl": "kMW4vhEbaWK4EePU", "avatarUrl": "3WnuxcpRiQgeQjr0", "customAttributes": {"qlqPX85nAuaojlfA": {}, "pHf4LtWaITbvADhF": {}, "xOKHuw2MEOg56PJR": {}}, "dateOfBirth": "1995-10-15", "firstName": "mfavWHw9ccjqUi39", "language": "MBY_134", "lastName": "sFtMLGuMFMUDEVZZ", "timeZone": "3kkoyeX3eCnq0xnx"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
