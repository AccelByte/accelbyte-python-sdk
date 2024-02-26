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

Example: '{"cycleIds": ["apYo27VXkQ0Xu2ez", "kmtCmJGLDhIEz9wI", "VPAD2mUO9XKaNpm3"], "defaultValue": 0.6223166988509438, "description": "ILuMwORF7wh1KImS", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "4EyyLgQIcmA8zJ4z", "tags": ["DMVKTJeahNBQkBNV", "9aiOOQCTQn5L7ruA", "czihdaIqUGGXucVB"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
