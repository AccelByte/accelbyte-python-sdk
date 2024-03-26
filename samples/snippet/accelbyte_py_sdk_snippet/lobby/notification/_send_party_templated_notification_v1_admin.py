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

Example: '{"templateContext": {"CaYqLXtg2R8dsm6P": "RjW5mAHv807DkFez", "Hr4YcUOWpVG3tqOr": "McO8G9GHE0UA4vyj", "rI49frgFZ2i2M3VI": "hqnLtaPFRuRidkth"}, "templateLanguage": "2nGmIuoM0zmEcKCS", "templateSlug": "FSnHQWI5Dx0aQPZu", "topicName": "it3ULR1zonlf4KHC"}'
"""

result, error = send_party_templated_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
