import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_user_v3
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

Example: '{"avatarUrl": "bvGDGZTGRhkUbQbM", "country": "Gdvfax7UjNMaa8Od", "dateOfBirth": "Qp0uVrS5s3iAPHtg", "displayName": "yGDC1Mz0EttnWMf5", "languageTag": "9xRnskG8Qx0NK4cA", "uniqueDisplayName": "2mkJ2vPKmMaJmLsQ", "userName": "GflmVzAsjRHAL8Ng"}'
"""

result, error = update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
