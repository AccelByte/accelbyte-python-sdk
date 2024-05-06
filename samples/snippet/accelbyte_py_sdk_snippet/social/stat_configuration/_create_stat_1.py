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

Example: '{"cycleIds": ["cIBRXHsNNE2yN9dD", "nddZxDmLZEvfOBFv", "LGiyrCQ0I1AtQtZS"], "defaultValue": 0.10078698824722798, "description": "OaOb5yo03ltw8FRa", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.7753910380644279, "minimum": 0.2747394792004366, "name": "MISIRTmsf4YykkN1", "setAsGlobal": true, "setBy": "SERVER", "statCode": "hgnKm1H0lgT8veEJ", "tags": ["h2tjB4aejVOYO6jQ", "EUvsmFIEGfWsRCru", "QFY4PFXSUTXqG4vq"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
