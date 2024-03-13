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

Example: '{"userIDs": ["EvwCM1UKj2njRBTD", "kS7LIH2n1RiwefA8", "OEbrw2FMljx4PGB7"]}'
"""

result, error = public_unban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
