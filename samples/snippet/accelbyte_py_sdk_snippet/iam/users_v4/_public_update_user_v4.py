import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_v4
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "abEKwcE4uhxtFPyY", "country": "fplrk5XH1zpruyey", "dateOfBirth": "raLyaaJIkEj8ozJb", "displayName": "wmSPgYOvr1BuyVNj", "languageTag": "pdBiQ4P74cJSYasS", "uniqueDisplayName": "CXmj8dzGt6GbYArz", "userName": "P9981gSGaqQdCt4o"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
