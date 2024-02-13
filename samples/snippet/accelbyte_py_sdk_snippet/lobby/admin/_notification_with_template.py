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

Example: '{"templateContext": {"65AF0Ylvf2DCqVuE": "RuUJGIyOkLyYDFts", "Aqe7qOBbvRmcssCY": "mMEddDGel8QK263e", "LuV2wWZUnwNl9BL5": "aVx4R7JR03JdxTI7"}, "templateLanguage": "Cv9Htd2fX1bRuyiM", "templateSlug": "0zbfbCCGzxSKjD05", "topic": "NtT4QCGaNywEOy2y"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
