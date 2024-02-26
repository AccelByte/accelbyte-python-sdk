import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_add_topic_member
from accelbyte_py_sdk.api.chat.models import ApiAddMemberParams
from accelbyte_py_sdk.api.chat.models import MessageActionAddUserToTopicResult

"""
body:
Definition: ApiAddMemberParams
is_admin: bool

Example: '{"isAdmin": true}'
"""

result, error = admin_add_topic_member(
    body=body,
    topic=topic,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
