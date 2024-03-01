import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_put_player_public_record_concurrent_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerRecordConcurrentUpdateResponse,
)
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

Example: '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1980-01-10T00:00:00Z"}, "updatedAt": "lYKpgbUJLklJpOfY", "value": {"ex0zZBBIRKzDRIsC": {}, "m6mJMGo2nhylQiZh": {}, "8UbUi8YDPVCRVA0B": {}}}'
"""

result, error = admin_put_player_public_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)