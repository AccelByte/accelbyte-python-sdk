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

Example: '{"cycleIds": ["tFpUwMPB9obmFOlk", "rKNVo9e6A6XcJRvf", "vjc3yBo6tI6699xJ"], "defaultValue": 0.03861899742309005, "description": "c1Yxva0Ohd9oIAvA", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.6795729934276422, "minimum": 0.3895866395141294, "name": "QZmSvDj2ePGWJg8b", "setAsGlobal": true, "setBy": "SERVER", "statCode": "kYdx1tTuhBACnKXZ", "tags": ["hwPRbDIBjk4V5ciZ", "k7igAqUOYlwLNSOn", "IIYHJVftbDVzZChf"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
