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

Example: '{"cycleIds": ["EJLz1oEimsdFm2PV", "sjEJF4TURSAMUa3j", "9PGSUszgGbtKDUbB"], "defaultValue": 0.3582221602617973, "description": "fKj5iENUBGZyW7AU", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.758828438158551, "minimum": 0.12910773320498437, "name": "Y5fS5pTM5en6aWUP", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ugUF0DDDMVqyuoCW", "tags": ["oJBNADOo0slWRvkZ", "XhFXBlwzRTLPY5V9", "1stUm0fDx62GX0J7"]}'
"""

result, error = create_stat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
