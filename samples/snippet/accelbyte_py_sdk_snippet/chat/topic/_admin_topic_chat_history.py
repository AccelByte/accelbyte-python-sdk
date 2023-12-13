import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_topic_chat_history
from accelbyte_py_sdk.api.chat.models import ModelsChatMessageWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_topic_chat_history(
    topic=topic,
    end_created_at=end_created_at,
    keyword=keyword,
    limit=limit,
    offset=offset,
    order=order,
    sender_user_id=sender_user_id,
    shard_id=shard_id,
    start_created_at=start_created_at,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
