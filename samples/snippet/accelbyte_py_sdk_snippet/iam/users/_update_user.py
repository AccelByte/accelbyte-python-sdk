import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_user
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

Example: '{"Country": "aInR6aRqyYf3mk3i", "DateOfBirth": "erzNgjXD3TXqx7NV", "DisplayName": "fsWqBfVI8j08LqQB", "LanguageTag": "RVA55yXZmeOjgK5R"}'
"""

result, error = update_user(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
