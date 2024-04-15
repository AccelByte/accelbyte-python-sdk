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

Example: '{"cycleIds": ["uWmEPigNrMoKhQVa", "fNn139oOIIed0ZQg", "sJq6oBj247c8C6kk"], "defaultValue": 0.057496219256409686, "description": "9LfgR33eLZO8d9FU", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.24892766509931186, "minimum": 0.9590631580364638, "name": "jE6l7qVmlHcshRXD", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "fbYaSRdDriaEYT17", "tags": ["R3Zy5AWpdHRMGTYb", "dLQEWaSn81KSbH0v", "JEv2q7d8UhMyFmiO"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
