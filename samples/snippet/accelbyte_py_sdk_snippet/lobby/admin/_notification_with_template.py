import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import notification_with_template
from accelbyte_py_sdk.api.lobby.models import ModelNotificationWithTemplateRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelNotificationWithTemplateRequest
template_context: Dict[str, str]
template_language: str
template_slug: str
topic: str

Example: '{"templateContext": {"7LfWDByMW0ZafHSA": "WJ3vJMpYds8uW6Az", "9NtVMg8bykxtq404": "iHyl63jwgpAV3Kzv", "I8GFLggsyVWHRChJ": "XIJ9V7ikil4sQLXc"}, "templateLanguage": "f6oCoGxsgneyDseG", "templateSlug": "zoguIJ7ggfWIo40L", "topic": "id9rxWI0zeRxrab3"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
