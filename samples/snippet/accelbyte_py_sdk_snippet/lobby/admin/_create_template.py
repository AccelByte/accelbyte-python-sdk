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

Example: '{"templateContent": "se38pyUrfVA9kCvq", "templateLanguage": "ojBp3xCSTPF4ZQEf", "templateSlug": "FaCFYQ1mI9cq3Kh4"}'
"""

result, error = create_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
