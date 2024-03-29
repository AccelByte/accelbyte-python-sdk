import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_reset_password_v3
from accelbyte_py_sdk.api.iam.models import ModelUserPasswordUpdateV3Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserPasswordUpdateV3Request
language_tag: str
new_password: str
old_password: str

Example: '{"languageTag": "qIjXhJU20RU2MUGo", "newPassword": "RZYQRJc7wZnJDceG", "oldPassword": "FQ5s2OdDQLPdfsfV"}'
"""

result, error = admin_reset_password_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
