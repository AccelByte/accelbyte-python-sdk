import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_reset_password_v2
from accelbyte_py_sdk.api.iam.models import ModelUserPasswordUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserPasswordUpdateRequest
language_tag: str
new_password: str
old_password: str

Example: '{"LanguageTag": "Qolq0ErsbcRkkgGY", "NewPassword": "0svpspOLscpXzgfb", "OldPassword": "rQ4foTRAHhXWHSKd"}'
"""

result, error = admin_reset_password_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
