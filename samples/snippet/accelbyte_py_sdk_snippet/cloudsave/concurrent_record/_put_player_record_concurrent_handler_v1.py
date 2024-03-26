import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_player_record_concurrent_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerRecordConcurrentUpdateResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsConcurrentRecordRequest
updated_at: str
value: Dict[str, Any]

Example: '{"updatedAt": "HiFj1BqvXmnrON5W", "value": {"64ihp7h2CKAB42kc": {}, "ybQmtqYj35NhkqIT": {}, "pIX2zEhxLLz6eOiV": {}}}'
"""

result, error = put_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
