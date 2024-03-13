import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import create_stat_1
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

Example: '{"cycleIds": ["NrkcRIztT0zJf59Y", "QrHygxNNN3GYWo5J", "k5lFcN9AEL1vY3WV"], "defaultValue": 0.6965573912478946, "description": "0cW7uvRPOpeiQQr6", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5511741762994268, "minimum": 0.9012910400164231, "name": "Zp3ZLCIIUMGjyj4z", "setAsGlobal": false, "setBy": "SERVER", "statCode": "IGMTMHiNqtuyEbfF", "tags": ["BUfLYaUpYYtYWf6Z", "ZXM1BfQ3N7vVY84V", "EUUUY4YKHqcr2rAq"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
