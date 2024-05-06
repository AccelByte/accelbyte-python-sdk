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
tags: List[str]
ttl_config: ModelsTTLConfigDTO
Definition: ModelsTTLConfigDTO
    action: str
    expires_at: str
updated_at: str
value: Dict[str, Any]

Example: '{"set_by": "SERVER", "tags": ["9rxzI5Wpb57N4ftk", "IxsMc04QAYOTl7mb", "v7s4AFlbujbAW9dj"], "ttl_config": {"action": "DELETE", "expires_at": "1994-09-08T00:00:00Z"}, "updatedAt": "9ZNFKrHzbpFsTtkZ", "value": {"XkHM2EaMQ2wJZAC4": {}, "wFhjdT2kgNx3a2St": {}, "qkyuoU0tNEaSBLSH": {}}}'
"""

result, error = admin_put_player_public_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
