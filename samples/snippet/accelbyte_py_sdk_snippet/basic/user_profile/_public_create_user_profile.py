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

Example: '{"avatarLargeUrl": "7n6PXdkt2KtKLNGg", "avatarSmallUrl": "Q4JTKNKgnVy3RPES", "avatarUrl": "2xWpWKUF5xVaSfgH", "customAttributes": {"vIthTBnw52HmvA1v": {}, "9iEBW5IJ7T7UcDKl": {}, "fycpXB7n1FCmifDj": {}}, "dateOfBirth": "1990-11-26", "firstName": "32JdxSe91vFINmOM", "language": "kcUP-Fton", "lastName": "8JWPFN8CCxYGoADS", "timeZone": "FWq5Zx3HsHgxVgnr"}'
"""

result, error = public_create_user_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
