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

Example: '{"templateContext": {"yXfXI73J071kpRz7": "QlaIKMuWQvu5ek7P", "UgrZg4PJ6IIojw13": "TCuMT6iY4Uk5VhTB", "ZM7gxDGgP83s8TW5": "bTw2BTR9gRs1zpjg"}, "templateLanguage": "48dcIH7XlVdETvZx", "templateSlug": "703yTCpSmRxQ70DE", "topicName": "EhJrVqqWHZIEXXCR"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
