import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_game_record_concurrent_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsConcurrentRecordRequest
updated_at: str
value: Dict[str, Any]

Example: '{"updatedAt": "YvLHtqBBaUwxc0qx", "value": {"z9O3FriIEPmUTR26": {}, "seUIEImLnDVMf9Pj": {}, "5ONjAbGpptqj7sBC": {}}}'
"""

result, error = put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
