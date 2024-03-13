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

Example: '{"cycleIds": ["rqIo15frTn50uuoQ", "2Q2kM3BHEOEJRalr", "slbetOp447SKfmkt"], "defaultValue": 0.8365615714357316, "description": "g0bG3CASzj1heU6y", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5891062422519819, "minimum": 0.4700651841916539, "name": "S2XuL8wpRLVWt3LX", "setAsGlobal": true, "setBy": "SERVER", "statCode": "a0fiyjfCUwAMNCIa", "tags": ["fCJctGoQCwObdZh2", "fVlutZXQvZ2kd8nW", "3yNiPoAO6MhgL048"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
