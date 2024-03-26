import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_put_admin_game_record_concurrent_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminGameConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminGameConcurrentRecordRequest
tags: List[str]
updated_at: str
value: Dict[str, Any]

Example: '{"tags": ["gCTfccK3ycOdcYoO", "eGJQWDDRTcAItlnH", "VdqxSC6jiFB8ev3E"], "updatedAt": "BK6nlEf5pXQ3we07", "value": {"ughdcHyqJLkxrAx4": {}, "bYb0YOuyLLn5sAZ3": {}, "M7MFqBU8XIrrluEo": {}}}'
"""

result, error = admin_put_admin_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
