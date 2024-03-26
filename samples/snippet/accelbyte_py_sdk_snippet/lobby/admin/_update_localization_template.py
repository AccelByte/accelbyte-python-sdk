import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import update_localization_template
from accelbyte_py_sdk.api.lobby.models import ModelUpdateTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelUpdateTemplateRequest
template_content: str

Example: '{"templateContent": "s8OlhosV7JaxGVoM"}'
"""

result, error = update_localization_template(
    body=body,
    template_language=template_language,
    template_slug=template_slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
