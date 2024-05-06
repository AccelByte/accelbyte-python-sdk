import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_password_v3
from accelbyte_py_sdk.api.iam.models import ModelUserPasswordUpdateV3Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserPasswordUpdateV3Request
language_tag: str
new_password: str
old_password: str

Example: '{"languageTag": "MA01TwqzX0Ww8mlT", "newPassword": "60kYAYACZ7VJILGU", "oldPassword": "G6iqLM5KkRVSB95q"}'
"""

result, error = public_update_password_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
