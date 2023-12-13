import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_query_topic
from accelbyte_py_sdk.api.chat.models import ModelsTopicInfo
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_query_topic(
    include_members=include_members,
    include_past_members=include_past_members,
    include_past_topics=include_past_topics,
    limit=limit,
    offset=offset,
    topic=topic,
    topic_sub_type=topic_sub_type,
    topic_type=topic_type,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
