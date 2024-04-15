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

Example: '{"avatarLargeUrl": "EMvaT3qnLEC9T5U4", "avatarSmallUrl": "w9AxUwK6BUtWSA3s", "avatarUrl": "pA9qbeWnIJrbJeX4", "customAttributes": {"LOFDxwReGFNFBhQK": {}, "fTUyHK2OFWQ7R6od": {}, "mxCTSGlXjEYyYPfc": {}}, "dateOfBirth": "1983-01-02", "firstName": "9nWJC87tPrCdjiNr", "language": "mWwh-168", "lastName": "aA0XUKFI6fwCMFOy", "privateCustomAttributes": {"OtDH5I7Nq13WSTNU": {}, "DMJqbksSAH73KYnu": {}, "iafB9qdr5d3zk5Va": {}}, "timeZone": "EzpyWZsO7A10ZyRp", "zipCode": "DpUYCHZU1OAIvOPj"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
