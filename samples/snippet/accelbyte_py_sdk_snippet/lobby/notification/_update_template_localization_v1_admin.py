import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import update_template_localization_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelUpdateTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUpdateTemplateRequest
template_content: str

Example: '{"templateContent": "Y9mZjmxFLLXp9u4t"}'
"""

result, error = update_template_localization_v1_admin(
    body=body,
    template_language=template_language,
    template_slug=template_slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
