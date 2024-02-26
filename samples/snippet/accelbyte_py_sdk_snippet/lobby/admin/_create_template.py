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

Example: '{"templateContent": "pMMv9UzYfU8MX1AS", "templateLanguage": "2KadRJ80N3VPkX81", "templateSlug": "RGIRq4tjfaYYu2qk"}'
"""

result, error = create_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
