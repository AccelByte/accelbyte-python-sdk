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

Example: '{"cycleIds": ["b8bn4uwUXp8o3Fam", "cFyxm4D5ZU2NrMa0", "yLhDCQ2f8A1XH3Rc"], "defaultValue": 0.36790174874209336, "description": "Zo6ld1JoRha4W0ZK", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.12033424396193737, "minimum": 0.7618059054924022, "name": "qim9GeFzJg1a0Jzv", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "1kq8jbvVQ4LgMKzY", "tags": ["X8ELIcKSYaaBPtxd", "LWNxumRdCW8r0Hoq", "CleTaGfpGXDqYtWl"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
