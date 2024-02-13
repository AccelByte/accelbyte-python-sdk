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

Example: '{"templateContext": {"zdmVfBfxWtuCksuW": "B6PY6x8qVKKfFvGM", "oV5qGZbM3WAR3XxB": "mYDwdynaWoK3wvt3", "mUPab2pYKbfF37rb": "p0SjGRVCkUZ1ovDh"}, "templateLanguage": "fZOvAoHvx57C5SaY", "templateSlug": "h6bGAC8YSC4nS3OD", "topic": "KoT2wi1mp6xagkfR"}'
"""

result, error = notification_with_template_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
