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

Example: '{"cycleIds": ["6cGCt4DmSwOW87Pj", "uOqZO9gtzDPlAba3", "UmPYah763tbglR46"], "defaultValue": 0.443187167108014, "description": "HRPXhGAFAvqUDM8b", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.23263034470112542, "minimum": 0.5727537444917388, "name": "u4FsRJPAeEIunDrq", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "p5opvyOJ4S4gRHO4", "tags": ["5RAVK9lyA2HDbw2k", "AtUgqjsfAqCuEX25", "ynVL4Qzovk8BLP4f"]}'
"""

result, error = create_stat_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
