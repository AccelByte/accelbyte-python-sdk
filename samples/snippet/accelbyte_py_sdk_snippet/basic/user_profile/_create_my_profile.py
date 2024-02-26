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

Example: '{"avatarLargeUrl": "krKvpiGXvBnEm7Ag", "avatarSmallUrl": "kk7gKOo54GsiU7gz", "avatarUrl": "tz4BrRYAV2IMcgji", "customAttributes": {"lV9Nopgbkr5mbw6C": {}, "aNyLQM7Hx1N26apl": {}, "TT9d2cJ2zPMNRZwh": {}}, "dateOfBirth": "1996-09-18", "firstName": "ONF1KoJ9xHzV2KBS", "language": "FMaE-Xy", "lastName": "QPaOTMa2XOeujlcD", "privateCustomAttributes": {"fsKBzwdck1nJsfRE": {}, "jc87WKsIgAgZg1Qg": {}, "Q6IdebLIkmJKGK6R": {}}, "timeZone": "gR2CT64SOAX9TBS6"}'
"""

result, error = create_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
