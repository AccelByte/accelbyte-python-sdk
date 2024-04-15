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

Example: '{"templateContext": {"mkN8j6jD6pOjmKdN": "6jidbiQpeFJfFARM", "LA6d3iXmgBGUXo9Y": "pLmGJSb8RUtQGgGn", "eeUIjm90nRvZaFx0": "vZ3P7zrugyItrDH0"}, "templateLanguage": "2uBhkef3JWyKLX34", "templateSlug": "T6Va59y22sRKHiWU", "topicName": "FmpIUBodEmhR15yH"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
