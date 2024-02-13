import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_party_templated_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelNotificationWithTemplateRequestV1
template_context: Dict[str, str]
template_language: str
template_slug: str
topic_name: str

Example: '{"templateContext": {"FlFjrNC75eKVrqav": "3OYOlHfpmPcKarIH", "umXC9I5a0JLMOo80": "z18z5IJIuTPabk6M", "0zWVItUiOrNYx4h0": "eqZKT37poH12uYAm"}, "templateLanguage": "pD83p28UPkLjZkLz", "templateSlug": "GYPvDWlzVH8q8TqX", "topicName": "6ZgrDgy9g8MdLu4O"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
