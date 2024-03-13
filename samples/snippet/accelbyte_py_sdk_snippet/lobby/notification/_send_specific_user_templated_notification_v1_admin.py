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

Example: '{"templateContext": {"Vvu9VnOaAKT87oxs": "tmGPx8rKo2cBkCLt", "7xIHQk8OU2cKtpko": "6k2rMPYVrTzieNNb", "VYiAbXOzd897nMzg": "cU7fj6XchrBVww3V"}, "templateLanguage": "bJmEiDuqrL5qMIb1", "templateSlug": "0NOoqTO3VObtA1ia", "topicName": "FA695IwPylJbEVQq"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
