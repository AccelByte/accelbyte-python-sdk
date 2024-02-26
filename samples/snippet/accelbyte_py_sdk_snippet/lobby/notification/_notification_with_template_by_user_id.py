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

Example: '{"templateContext": {"HDdv8gFuMnUjqaDE": "Rn8QRSaBeSi9Tnxs", "XBh75ju7xHNezGGM": "0ZOLRfB2flIcIUDy", "A1y3OZ8UCkLmBChv": "tuGBRyAPIYwuvDfw"}, "templateLanguage": "V2Z7eiC58LwsivBO", "templateSlug": "u1Y2yN3YKR1GarVs", "topic": "7kmgrpehqd4yX9r2"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
