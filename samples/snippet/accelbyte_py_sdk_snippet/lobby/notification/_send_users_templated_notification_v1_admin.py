import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_users_templated_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelNotificationWithTemplateRequestV1
template_context: Dict[str, str]
template_language: str
template_slug: str
topic_name: str

Example: '{"templateContext": {"yOa3atcuesXuhpxs": "Qd3QBudyJkPP64Sf", "NY53oLVq79D5Jhyd": "L9jKPWlJ2VvBTj6V", "iq7sVzGJzhLWX6v4": "F7XbeAWMPnQT4bin"}, "templateLanguage": "nsbXEUyoHAW3roMn", "templateSlug": "2GVwNLYfocDBoBk2", "topicName": "b7LcDf88zL10z1lu"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
