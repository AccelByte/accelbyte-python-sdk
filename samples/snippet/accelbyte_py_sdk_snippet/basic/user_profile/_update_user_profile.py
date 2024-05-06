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

Example: '{"avatarLargeUrl": "e2LWQy8F1nSREc9D", "avatarSmallUrl": "PGPUPxFFLM0vF8Uz", "avatarUrl": "9N81NUN8bKCt7Q3v", "customAttributes": {"TLuLmoTlhrICbORr": {}, "lmzAOHPCwXRdxuz6": {}, "YtUpQcRsu5Ca1xkm": {}}, "dateOfBirth": "1973-03-28", "firstName": "ToaMqRDgNc4vQJWg", "language": "ZzU_267", "lastName": "VgD2s1AyE50Q4Ynu", "privateCustomAttributes": {"VMoonV9qVFeU40zr": {}, "FUAbgbZ7LVDz2MNG": {}, "OmaGmkfI3n17rPUP": {}}, "status": "INACTIVE", "timeZone": "vqt6MtJ0FKGrcXgT", "zipCode": "dviLB3f2mdwycTHK"}'
"""

result, error = update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
