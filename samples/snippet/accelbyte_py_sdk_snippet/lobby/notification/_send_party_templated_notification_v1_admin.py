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

Example: '{"templateContext": {"kpwRNLZy5lJsUmtv": "R60uabWa4kQ94Ryj", "N8zhGKdxg1lkRrAR": "VesMvjtVHtxvUWX9", "EUmUmgW0kk3xaw7m": "MEKEEXrQyak0o9rt"}, "templateLanguage": "mm0k1cSfThvmW5Mz", "templateSlug": "zvruoHBl34ztB3VU", "topicName": "p8C7RLjESDFRpGu1"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
