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

Example: '{"templateContext": {"NrIH3626zfQRnGqU": "ZxS6EucGzA330uO7", "M74XAYvR4wHgc1sh": "AXIJAwgQcKZmcpR0", "sdm1FKFSPGQwQ2n2": "3YQ5rWLiWvfAxAKi"}, "templateLanguage": "1ON0MA3uh7XlGcze", "templateSlug": "MIsUwr2wqJAlEHuA", "topicName": "6IJ11yEcgbPxcwa8"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
