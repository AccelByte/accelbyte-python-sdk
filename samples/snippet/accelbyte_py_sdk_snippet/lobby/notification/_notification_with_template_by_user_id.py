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

Example: '{"templateContext": {"BBjIhubMoOMO3QTF": "IuIGRJtn6kDBuEl9", "u0GUjbp2wEao6BKf": "SYeuxNsDfOe0huCc", "gDKYhy4UFXY9gIyy": "gkwAsbGO1AqD4Fmw"}, "templateLanguage": "4Ql7vjGV9QQb5vaU", "templateSlug": "Ff3XOQ81mhPfoJC8", "topic": "TaQnNbYFkV3R9DUa"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
