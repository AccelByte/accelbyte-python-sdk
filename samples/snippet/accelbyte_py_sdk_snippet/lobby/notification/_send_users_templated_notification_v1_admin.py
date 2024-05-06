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

Example: '{"templateContext": {"LsYtlQVIDpgJyJUD": "F9Jz1jPXyycGqkCu", "1QBam1aSAowmb3L6": "MqkiJLWAI71JpHkx", "cyzIWGzxSj19wL70": "plAqyuuGIpX0enWl"}, "templateLanguage": "xEF7AOHARYzoDjfY", "templateSlug": "V2bRKpQAN5d4s9xs", "topicName": "C2A76Z5iwWwInneC"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
