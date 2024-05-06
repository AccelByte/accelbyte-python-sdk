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

Example: '{"cycleIds": ["GUiZva33LfqQZ2jy", "HPPuJrBKJ4QGVB8j", "Re11wpLuIjMeGvyu"], "defaultValue": 0.033070750533890636, "description": "UtwoWB4mCfWft1GE", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "TfMQLahcxsxsKrU5", "tags": ["be4vpC41vx1FSgwy", "HdqHgH4O4eQTg1KD", "AMkbqyl046YiOqjx"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
