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

Example: '{"templateContext": {"HrbEpWgsLdeXdDrR": "HikPsleB2WLUcBjY", "bjvc9zvlI96YePpz": "7TrJ4A5roN6iLHoZ", "aW6RJD69KKF64Cz1": "7U8e4DX8Srad7EBw"}, "templateLanguage": "sqxAz6LdzyEhGuZR", "templateSlug": "C4uiUfpZQYTP8AZq", "topicName": "Z75vhJHmhAhLSRpJ"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
