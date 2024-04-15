import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import notification_with_template_by_user_id
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelNotificationWithTemplateRequest
template_context: Dict[str, str]
template_language: str
template_slug: str
topic: str

Example: '{"templateContext": {"0zKJKH00AmP5e4fS": "FggKADKEj8nYrniM", "AhFSYCGRWJNYAzO5": "PVnTlMubihQcZBGE", "VpUbYQ4wRz9sYOxR": "AxuVXwJvF1FunjMW"}, "templateLanguage": "QNYqzOPCMt1JT26M", "templateSlug": "Oo6M8Y36iRHxhUqc", "topic": "ejH3evvj6pHzDbTR"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
