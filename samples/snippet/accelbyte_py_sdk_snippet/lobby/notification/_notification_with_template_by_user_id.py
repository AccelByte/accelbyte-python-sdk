import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import notification_with_template_by_user_id
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelNotificationWithTemplateRequest
template_context: Dict[str, str]
template_language: str
template_slug: str
topic: str

Example: '{"templateContext": {"oDHlc0PUPxjsgK6T": "mm5T2CS7jGvyY3hU", "7Vy0MncwGb34g9yS": "qvuBwuapFejwEuku", "NMiijY8TktckaEC0": "IdDsurh7ZHpKFZcX"}, "templateLanguage": "inbJuIfAkRzcNC1s", "templateSlug": "DYg7EHPDlqWajZjx", "topic": "BYQqGdcGyvtLRykO"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
