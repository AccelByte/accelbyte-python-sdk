import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import create_template
from accelbyte_py_sdk.api.lobby.models import ModelCreateTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelCreateTemplateRequest
template_content: str
template_language: str
template_slug: str

Example: '{"templateContent": "GqeGIHW5eX6bH19O", "templateLanguage": "HQdCFfYvJKCf1Mq0", "templateSlug": "yG8NLMkFac9Khtv5"}'
"""

result, error = create_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
