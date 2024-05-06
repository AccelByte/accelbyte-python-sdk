import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_bulk_put_player_records_by_key_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkUpdatePlayerRecordByKeyResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkUpdatePlayerRecordsByKeyRequest,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUpdatePlayerRecordsByKeyRequest
data: List[ModelsBulkUpdatePlayerRecordByKeyRequestDetail]
Definition: List[ModelsBulkUpdatePlayerRecordByKeyRequestDetail]
    user_id: str
    value: Dict[str, Any]

Example: '{"data": [{"user_id": "KGG62FaWODi4Luyv", "value": {"wJtmLFD48LJDV6gx": {}, "L6JUecPfjPm9MgJA": {}, "hqVmMmnqKB8hQNJg": {}}}, {"user_id": "KkTrGRuOhtOqJQ7w", "value": {"595VvNwZmgNY7b9a": {}, "js6gCgz3jK9zOxw9": {}, "2guODAGpByn4RIC8": {}}}, {"user_id": "WXNH5K6eWxysAK0Q", "value": {"78Hdmre49ACdOOFH": {}, "dg9l8n0ppeIdmPXl": {}, "MqzxeQ9gNiwbTCcJ": {}}}]}'
"""

result, error = admin_bulk_put_player_records_by_key_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
