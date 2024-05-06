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

Example: '{"templateContext": {"EdcDPDC62BdEbci7": "Xaf4Cx1yzremD44Z", "OGJq2cGTVuyW9Cli": "11pLXwypGe7MJoKw", "y7eRo7iOPW1CdBjl": "HVANiyf5U0qvFSYS"}, "templateLanguage": "0ODhFaJpEXfXgnLh", "templateSlug": "hU5nwewfRULalVGW", "topic": "AenMywCNA5BawCVk"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
