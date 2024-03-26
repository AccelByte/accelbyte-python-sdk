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

Example: '{"set_by": "CLIENT", "tags": ["w3eq3BHXlToPbXCB", "2OppO93wiDL1IlZb", "OWVDac2FKxAgXW2b"], "ttl_config": {"action": "DELETE", "expires_at": "1974-03-29T00:00:00Z"}, "updatedAt": "p00NDwbNhYcQGagF", "value": {"5rK6KiMs9igXfMWp": {}, "RwWTS1MSjDKBcDxS": {}, "TOVOKMtSupxosfRY": {}}}'
"""

result, error = admin_put_player_record_concurrent_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    response_body=response_body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
