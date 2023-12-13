import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_topic_members
from accelbyte_py_sdk.api.chat.models import ModelsTopicMemberWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_topic_members(
    topic=topic,
    is_banned=is_banned,
    is_moderator=is_moderator,
    limit=limit,
    offset=offset,
    shard_id=shard_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
