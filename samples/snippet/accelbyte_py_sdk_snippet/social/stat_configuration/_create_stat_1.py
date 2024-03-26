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

Example: '{"cycleIds": ["1eiHvbSawqtVzc1P", "vNJ76YEor8k2Jdal", "qpz491QIHz98FQqk"], "defaultValue": 0.3090507540661229, "description": "ohUdmdYIxa0DAxrC", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.1888979666680154, "minimum": 0.8544417049078683, "name": "mb6bK8epQ22g0Vmr", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "UAqCNZbQYGiNLbtW", "tags": ["Mf0UvW17gUYCn16W", "cyp1koYmqLZt6UgN", "uqfLvnpixkZBIJH1"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
