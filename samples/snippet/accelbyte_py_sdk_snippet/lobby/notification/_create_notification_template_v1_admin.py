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

Example: '{"templateContent": "I2B2xi5SmkNfCT6U", "templateLanguage": "9ffG715CP7TZYc5k", "templateSlug": "hya7hyYdvgD8doLC"}'
"""

result, error = create_notification_template_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
