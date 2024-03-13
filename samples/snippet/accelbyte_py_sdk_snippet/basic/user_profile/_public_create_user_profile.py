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

Example: '{"avatarLargeUrl": "c2F9mKoSRU5Oke1Z", "avatarSmallUrl": "zY1UGSDkmOfFAGR5", "avatarUrl": "ief0quf1QWOsSbqw", "customAttributes": {"VGAjY5JyZ3yKsAvO": {}, "se2vVqnCbKo52pUs": {}, "Ejr4LIb1pcaqTXZh": {}}, "dateOfBirth": "1998-11-20", "firstName": "oV0QjW3ZowEuPzRd", "language": "pPF_Yrcd", "lastName": "TKKOQY6RX8503RqD", "timeZone": "BbTOyvpo8jTPNU6G"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
