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

Example: '{"templateContext": {"51jSKCMzjDHxlR7u": "auudIBJVoNjI9UEg", "MlIyLeif1sWVLfN5": "YcqahCwl3lO7VOOg", "JJ85wouo65352rhZ": "H0xpkPV4LQk4PSwL"}, "templateLanguage": "yq7zxYO3PESQvvB2", "templateSlug": "UXm5JplP8V4Jdbz0", "topicName": "bqPnpUaB4kbz9Zw3"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
