import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_unban_topic_members
from accelbyte_py_sdk.api.chat.models import ModelsPublicUnbanTopicMembersRequest
from accelbyte_py_sdk.api.chat.models import ModelsPublicUnbanTopicMembersResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsPublicUnbanTopicMembersRequest
user_i_ds: List[str]

Example: '{"userIDs": ["mWlzZTA13iAapabo", "uC7CIN26r8jTmTic", "OzsUIGjfFc1R7ZRL"]}'
"""

result, error = public_unban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
