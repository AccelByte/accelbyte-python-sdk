import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_rewards
from accelbyte_py_sdk.api.platform.models import RewardPagingSlicedResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_rewards(
    event_topic=event_topic,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
