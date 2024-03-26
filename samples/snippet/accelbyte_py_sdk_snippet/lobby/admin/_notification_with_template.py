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

Example: '{"templateContext": {"00v0EEYmj0JJBjnx": "Cie3lFzZqycITfm1", "x9pSKhUVc3fc3Acu": "0ty3ZHWkRXhBITBm", "VKFfl4Yq8By0OHKT": "7irKbTquzS0tBIza"}, "templateLanguage": "pC3tvYNpEXLQiF6C", "templateSlug": "IsTDGgaA0Gyhwru4", "topic": "9ABqN1rqpIhVjSnG"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
