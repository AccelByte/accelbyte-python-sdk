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

Example: '{"templateContext": {"Y71zgXHerrj9Yr7A": "VbjXPgSWco0k8OVU", "BsgIsPcosVhhHo5j": "DLw2kEFInoXRFkxP", "term3ixi3UKF7aNj": "M6niOHkLomEPOwQk"}, "templateLanguage": "F33xWfYLaFO8hBdb", "templateSlug": "QjbvrIa6CtnBLy8B", "topicName": "SwLISM6BQsNlCXzF"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
