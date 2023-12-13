import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_query_users_topic
from accelbyte_py_sdk.api.chat.models import ModelsTopicLogWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_query_users_topic(
    user_id=user_id,
    include_past_topics=include_past_topics,
    limit=limit,
    offset=offset,
    topic_sub_type=topic_sub_type,
    topic_type=topic_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
