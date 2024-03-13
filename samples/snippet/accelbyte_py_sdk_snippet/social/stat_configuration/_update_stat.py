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

Example: '{"cycleIds": ["sTv4W0pQUeMOczHo", "wcNpIQcicSxCJeU0", "MiTmwxsTN2NZidaP"], "defaultValue": 0.5809109673088454, "description": "EZKvMyn59EKCxufB", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "OUBqC2f5OXkMan2E", "tags": ["Mv9DhslgTVBusZLM", "L9LH52a2FRB34Bif", "gX9H2lwNxsC2Ohlm"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
