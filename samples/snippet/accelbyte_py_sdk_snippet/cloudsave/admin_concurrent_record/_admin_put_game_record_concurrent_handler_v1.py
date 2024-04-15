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

Example: '{"set_by": "SERVER", "tags": ["YyUnhzS37tRE7FoW", "nBTctdPD7IGv38I3", "4bx6HES3WgoUfSqR"], "ttl_config": {"action": "DELETE", "expires_at": "1989-06-09T00:00:00Z"}, "updatedAt": "klYASWgKaWixGqyd", "value": {"gxV1SWoH5Jzb2VT1": {}, "FOhLVSFCKJ45Exj4": {}, "NzduEEdRgMYvbc6l": {}}}'
"""

result, error = admin_put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
