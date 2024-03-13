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

Example: '{"templateContext": {"yPWeKmWdIz0LK0GG": "0MVryrZsImRlzI6c", "Oi7TsZ5ePpkf5sGr": "useKecdgDh64jQYA", "shdtZSRxRfxilIHF": "JG6wlFjRjbcpLH8O"}, "templateLanguage": "U0cgFxJQuc6Y9bdz", "templateSlug": "tabt0bpfKVmClVWV", "topicName": "jESEJDkvWFoFfFFI"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
