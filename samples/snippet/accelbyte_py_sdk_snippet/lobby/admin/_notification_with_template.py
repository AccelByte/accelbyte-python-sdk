import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import notification_with_template
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelNotificationWithTemplateRequest
template_context: Dict[str, str]
template_language: str
template_slug: str
topic: str

Example: '{"templateContext": {"e2NCzOt3MxkqRSAo": "8dskhk3Ry4zu0pgL", "lGgw0tYegqJrL4Yl": "s5O7h5XcITwvkTI5", "Oo7HMOhMD1IpuRwC": "1tzaVNXn0QAiQrZK"}, "templateLanguage": "EEg8ctzdsK7sFdlf", "templateSlug": "BM2dT4zMQ3rySqTE", "topic": "p4sT74gBd3yYhSM3"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
