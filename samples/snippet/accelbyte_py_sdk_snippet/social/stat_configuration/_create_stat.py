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

Example: '{"cycleIds": ["x2g1Tc9KP97konSp", "vAm5f0ZISjhyo2pN", "UCzhOftQm7W5BnoI"], "defaultValue": 0.0035174533953018505, "description": "wofdi41gTIDlhIx4", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.835883548113341, "minimum": 0.6889483364918249, "name": "HO3bgGB9lx2aIXs4", "setAsGlobal": true, "setBy": "SERVER", "statCode": "PLiBEMhXXDB6lMv7", "tags": ["JOS46UZJxw1PaMqB", "byyNuMR4gQGLYHLZ", "Wws0r1GrRcd58pQn"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
