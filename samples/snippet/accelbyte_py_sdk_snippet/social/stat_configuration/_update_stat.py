import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_stat
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatInfo
from accelbyte_py_sdk.api.social.models import StatUpdate

"""
body:
Definition: StatUpdate
cycle_ids: List[str]
default_value: float
description: str
global_aggregation_method: str
ignore_additional_data_on_value_rejected: bool
is_public: bool
name: str
tags: List[str]

Example: '{"cycleIds": ["W1xlPp2PTbuvXoTw", "sVpYivK850WeiHkn", "H4G97xdNt3wtFfVv"], "defaultValue": 0.9913063638289469, "description": "JgXEcFWvKqCSk4Nx", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "mzmN73EeC0lnEQim", "tags": ["nyVz4yKNcGNYxNyu", "WH8HjKevh1sEccZq", "T1aFXmrYZxUK5gNb"]}'
"""

result, error = update_stat(
    stat_code=stat_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
