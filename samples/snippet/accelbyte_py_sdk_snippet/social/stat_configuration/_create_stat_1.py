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

Example: '{"cycleIds": ["Z055NfPzBW52Saey", "ZjsW7jzwjTc4uvDx", "bSRyA6bEzf5Hs8xy"], "defaultValue": 0.8200542448830671, "description": "91ZCZpnJthMTePa9", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5782030547679311, "minimum": 0.9172145069106837, "name": "2lzcbFTUsz9l9qZ0", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "gqEsroz2XCCvi7hR", "tags": ["yhsL6sjEIEq2K90R", "LjDz9ki0Xe8BxNVa", "P3KaHtHTMRGHpTG2"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)