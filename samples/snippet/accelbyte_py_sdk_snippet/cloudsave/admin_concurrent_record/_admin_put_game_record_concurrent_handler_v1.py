import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_game_record_concurrent_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminConcurrentRecordRequest
set_by: str
tags: List[str]
ttl_config: ModelsTTLConfigDTO
Definition: ModelsTTLConfigDTO
    action: str
    expires_at: str
updated_at: str
value: Dict[str, Any]

Example: '{"set_by": "CLIENT", "tags": ["jd64fUlmodT64znm", "QHxUgKuspbySgzNQ", "11kOWmNDhAcRALX6"], "ttl_config": {"action": "DELETE", "expires_at": "1972-07-20T00:00:00Z"}, "updatedAt": "RpFb8B8qUG3v6ov5", "value": {"Qi5mywLLJWyRoJ8m": {}, "0JI8FwZaAbfYQYMu": {}, "LLCLGhgLiFdLjdRH": {}}}'
"""

result, error = admin_put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
