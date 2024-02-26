import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_users_templated_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelNotificationWithTemplateRequestV1
template_context: Dict[str, str]
template_language: str
template_slug: str
topic_name: str

Example: '{"templateContext": {"G7hguJCesmIWJIAd": "B8PNgsxaLQeCxAv7", "OI6hH9YHOKzgtG4q": "qSD9IfQWbdy5V6cl", "Ct6LyxYGZq4ximzU": "S7FWNt3KljAUTnly"}, "templateLanguage": "SRY368L2dc6Rpj0v", "templateSlug": "Y06K5M774b2tKqof", "topicName": "qRUnejtDU8K3MZsq"}'
"""

result, error = send_users_templated_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
