import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import create_stat
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatCreate
from accelbyte_py_sdk.api.social.models import StatInfo
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatCreate
cycle_ids: List[str]
default_value: float
description: str
global_aggregation_method: str
ignore_additional_data_on_value_rejected: bool
increment_only: bool
is_public: bool
maximum: float
minimum: float
name: str
set_as_global: bool
set_by: str
stat_code: str
tags: List[str]

Example: '{"cycleIds": ["dOdaKZZRWdtt15mN", "Z5pNGdKc0LBjtyaU", "DyOYl4dlZ06nWwCe"], "defaultValue": 0.18600946748754577, "description": "sDl8hKSwVAmiLBNG", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.4122685196449114, "minimum": 0.2489203836117273, "name": "zWCDdHVJ70uSoABl", "setAsGlobal": true, "setBy": "SERVER", "statCode": "0sHWFXYZvIBgR2v8", "tags": ["kDBEpoL4P6gI5yOw", "SEm2BVE9oP7UNu6p", "DEq3AvDtMsXO6tjd"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
