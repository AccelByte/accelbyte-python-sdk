import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_query_topic_log
from accelbyte_py_sdk.api.chat.models import ModelsTopicLogWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_query_topic_log(
    end_created_at=end_created_at,
    limit=limit,
    offset=offset,
    sender_user_id=sender_user_id,
    start_created_at=start_created_at,
    topic_id=topic_id,
    topic_ids=topic_ids,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
