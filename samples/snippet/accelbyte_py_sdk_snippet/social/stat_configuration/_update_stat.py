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
global_aggregation_method: str
ignore_additional_data_on_value_rejected: bool
is_public: bool
name: str
tags: List[str]

Example: '{"cycleIds": ["IQ3TFsyHDgTWKvsB", "km5lg4kvKgVQtEhc", "awN7gCSrwbtuzd4O"], "defaultValue": 0.8824071665742637, "description": "tbspTr17cXAu0ZPe", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "OwBSdA8bFFFzBg7b", "tags": ["e8ABY85aGwvjpKdj", "CBEhSIdjAHX2L80l", "X0iGU6JHMGE1ZkHZ"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
