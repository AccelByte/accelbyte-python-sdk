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
updated_at: str
value: Dict[str, Any]

Example: '{"updatedAt": "tGsmGzqWkBDZ5VAg", "value": {"v45AZEVyeQZtIUWB": {}, "1gNtSGSouABx10wQ": {}, "qeVa5TH6tjdGcrjc": {}}}'
"""

result, error = admin_put_admin_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
