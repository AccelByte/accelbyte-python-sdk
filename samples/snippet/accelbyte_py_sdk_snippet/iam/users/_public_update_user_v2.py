import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_v2
from accelbyte_py_sdk.api.iam.models import ModelUserResponse
from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserUpdateRequest
country: str
date_of_birth: str
display_name: str
language_tag: str

Example: '{"Country": "B1JeGrk8TN6LSW5v", "DateOfBirth": "8GumeSd1HHloXBLg", "DisplayName": "f7qCGkCyrGOMZ0zv", "LanguageTag": "6cRX6M9Bu3tlBUVF"}'
"""

result, error = public_update_user_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)