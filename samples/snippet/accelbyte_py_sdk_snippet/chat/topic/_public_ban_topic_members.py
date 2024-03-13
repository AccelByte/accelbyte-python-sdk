import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_ban_topic_members
from accelbyte_py_sdk.api.chat.models import ModelsPublicBanTopicMembersRequest
from accelbyte_py_sdk.api.chat.models import ModelsPublicBanTopicMembersResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsPublicBanTopicMembersRequest
user_i_ds: List[str]

Example: '{"userIDs": ["Hb76DxFtaVjAsuzH", "4nOuTp4nuDkHoMEc", "h5ANZoNWmK2uXVkH"]}'
"""

result, error = public_ban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
