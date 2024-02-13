import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import (
    send_specific_user_templated_notification_v1_admin,
)
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelNotificationWithTemplateRequestV1
template_context: Dict[str, str]
template_language: str
template_slug: str
topic_name: str

Example: '{"templateContext": {"4EjhYNhs4ZT1nLp6": "wqFQBdBwuTPF2yDP", "k0BhVyMkae026SsC": "SLpLexn93eLRJING", "6YeT4LghzWzJUgyi": "nvRA1jk3Z9STjM9u"}, "templateLanguage": "DHuXkwS2RFsiSSJB", "templateSlug": "0PZmRbTFTNbykbIh", "topicName": "V93nMwa69J43qrF8"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
