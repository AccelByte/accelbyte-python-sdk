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
ttl_config: ModelsTTLConfigDTO
Definition: ModelsTTLConfigDTO
    action: str
    expires_at: str
updated_at: str
value: Dict[str, Any]

Example: '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1993-11-26T00:00:00Z"}, "updatedAt": "k7S70YiPwuRfQR52", "value": {"wZblViSgVFa3KgJj": {}, "l1vhrNyF1nskuVWS": {}, "E2IYNIMQBOVGRWB5": {}}}'
"""

result, error = admin_put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
