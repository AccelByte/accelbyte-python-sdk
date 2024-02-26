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

Example: '{"templateContext": {"aUVhgIn3k3v3PPEe": "z936EckV8rYP1KPS", "EZMilEhKWg95a121": "Aj3KW7IlrIMPNil5", "MvQM882GFOfHJp83": "KJpCx0TQiMTQfRAt"}, "templateLanguage": "aA0IhoCkHlGjJeAo", "templateSlug": "45clwIdvq3JPx4Je", "topic": "5IqaVPYYwFSn5fPp"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
