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

Example: '{"templateContext": {"qioodSTGHW5LxUFB": "PwMTASV1NY7LkK6b", "SuUF5lgWxf4Ppl9g": "g8djH2PGgLZXmDT5", "VvbNh5vtuzpVOCIC": "yey59Q0lznJ0q1NS"}, "templateLanguage": "yRznb5ISnBMza565", "templateSlug": "iGnVvq7ShxBRqJBu", "topicName": "2dPDQT2zht1vfqjd"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
