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

Example: '{"templateContext": {"7JRB2LcRCxuMH9uV": "ISrkK12dQXwAWz3Y", "RlawST8cwvSpS2fC": "SthlwWACWeNW8x8p", "KPji81ieOfPIU0rE": "LxiVHAFw0HqTkGuo"}, "templateLanguage": "n8j2TFcMTEPO1L5J", "templateSlug": "ljsFNhmcrTfxVC4B", "topic": "FH6bCsOfyxIJ3dYb"}'
"""

result, error = notification_with_template(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
