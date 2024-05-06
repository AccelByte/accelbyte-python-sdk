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

Example: '{"avatarLargeUrl": "9pbcFYixXzAdWpfp", "avatarSmallUrl": "PZEhT9xfKweqnstl", "avatarUrl": "Dre4TOBdBuOukWjw", "customAttributes": {"ON15CmuJBcTo54v2": {}, "LJcJ0neA84L04csb": {}, "AuERyw3wHMtW1liC": {}}, "dateOfBirth": "1972-09-03", "firstName": "GuG6BPvo4TErOBTd", "language": "kwQ-pXPa", "lastName": "K93QHYYkmTdHMJnK", "privateCustomAttributes": {"v6k8VmGOzYyCmDRK": {}, "PbGwR3Z610trnCCb": {}, "LG4lcPYG9ahJMahq": {}}, "timeZone": "UzC6oiWg3tVDRLVZ", "zipCode": "o7omABvg6s9nyd3L"}'
"""

result, error = public_update_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
