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

Example: '{"set_by": "CLIENT", "tags": ["YfUOpZOQo0x35LlP", "4ADx56p1zy6WRaE3", "dZWHvP3WuIIJIJqm"], "ttl_config": {"action": "DELETE", "expires_at": "1994-04-28T00:00:00Z"}, "updatedAt": "j62zDcU4pzyn5Zlk", "value": {"afq1xnX7jRR2u9OW": {}, "sVnZYy5GMTtPFXGV": {}, "RnHgCc7mTtFBqBcA": {}}}'
"""

result, error = admin_put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
