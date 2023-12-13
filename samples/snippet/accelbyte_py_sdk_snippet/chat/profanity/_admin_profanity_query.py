import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_query
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryQueryResult
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_profanity_query(
    filter_mask=filter_mask,
    include_children=include_children,
    limit=limit,
    offset=offset,
    parent_id=parent_id,
    start_with=start_with,
    word_type=word_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
