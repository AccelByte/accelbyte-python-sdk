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

Example: '{"templateContext": {"fkUNVDWnxqSoDXou": "uFzj1LQBwnQBcxys", "Rx6RRHD5K1vhig4W": "1zARgBFrZQDnpaPV", "iUmjK2qVAU8pXUzg": "G1jUcfOzrV4npGbQ"}, "templateLanguage": "dUjXBpFpguZve4cZ", "templateSlug": "isBOrYh8yeNL46vs", "topicName": "oJ1W3crOS2mIsv9E"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
