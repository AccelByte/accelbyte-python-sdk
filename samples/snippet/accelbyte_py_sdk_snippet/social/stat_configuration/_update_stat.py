import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_stat
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatInfo
from accelbyte_py_sdk.api.social.models import StatUpdate

"""
body:
Definition: StatUpdate
cycle_ids: List[str]
default_value: float
description: str
ignore_additional_data_on_value_rejected: bool
is_public: bool
name: str
tags: List[str]

Example: '{"cycleIds": ["8Od5OJbIVD8DLQMG", "uAPHsHa85bZmxrlO", "7ggZXqNSsZjxIu9a"], "defaultValue": 0.3428555021083374, "description": "yFgYj5tjrKvd59Tg", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "G6aZaqUajjd0k5Do", "tags": ["0BQsUfZAIs79VOhf", "irtM8E8uHzrqmlgp", "izGSEmnAzIPYsE42"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
