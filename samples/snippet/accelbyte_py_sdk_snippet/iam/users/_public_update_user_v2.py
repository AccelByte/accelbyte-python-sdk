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

Example: '{"Country": "DN1ICeKOEDjGz5LC", "DateOfBirth": "EAa30kkKjfSAIBwg", "DisplayName": "KmOpAyQjkVQznvMd", "LanguageTag": "j3vXSZzoVskbLnQy"}'
"""

result, error = public_update_user_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
