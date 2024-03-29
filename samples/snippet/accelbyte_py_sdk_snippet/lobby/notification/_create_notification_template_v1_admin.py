import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import create_notification_template_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelCreateTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelCreateTemplateRequest
template_content: str
template_language: str
template_slug: str

Example: '{"templateContent": "hZW0J3RuhMejZFD0", "templateLanguage": "7Nz0KeXEb6JolpKi", "templateSlug": "gbAQix04CHCCYVH9"}'
"""

result, error = create_notification_template_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
