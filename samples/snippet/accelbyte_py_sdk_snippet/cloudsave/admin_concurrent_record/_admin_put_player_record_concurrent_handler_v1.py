import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_player_record_concurrent_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerRecordConcurrentUpdateResponse,
)
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

Example: '{"set_by": "SERVER", "tags": ["GQ2gaDe6azkpmCld", "AuhMHeVjGd3IdiXo", "WRlPn3RwphasxmTP"], "ttl_config": {"action": "DELETE", "expires_at": "1979-03-11T00:00:00Z"}, "updatedAt": "WG3W3cVdgUPUVWsS", "value": {"VOBFjnp0b5Z0O2PD": {}, "MHEq4hU1J0jcgZfW": {}, "i4LPbuNm9WUCw88V": {}}}'
"""

result, error = admin_put_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
