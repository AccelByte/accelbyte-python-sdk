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

Example: '{"set_by": "SERVER", "tags": ["xw0uy83NQXDOSVKP", "sljwaaD1ryQT87SR", "AUXYTZZL6Z3oHhaL"], "ttl_config": {"action": "DELETE", "expires_at": "1995-06-30T00:00:00Z"}, "updatedAt": "KWB2L5WzIieto2Hq", "value": {"AzWgognX87db9I55": {}, "zklOwS4EHnUnSife": {}, "GDADfyv7iQzpCnxy": {}}}'
"""

result, error = admin_put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
