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

Example: '{"templateContent": "KDXuHtO3cNch6oNG", "templateLanguage": "IaqI3cVSoLRGunEV", "templateSlug": "BxhmmHFEhmp6Xvxj"}'
"""

result, error = create_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
