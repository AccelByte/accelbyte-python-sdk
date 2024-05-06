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

Example: '{"templateContext": {"A2OGocRxwoSruoyx": "f8fXIBUn5DUSDbBb", "7k3OOSoUgQ3cTUVe": "vYhOA5PqKyU5J6Cj", "l6x6aeU6xAIPOP4M": "WXe5CZzmRy3DKUku"}, "templateLanguage": "pv5X2LwnmrgBEEEo", "templateSlug": "V9e4dJ4NNwZlqfMi", "topicName": "h0Y6NWXloWQ43upC"}'
"""

result, error = send_specific_user_templated_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
