import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_game_binary_recor_metadata_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameBinaryRecordAdminResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameBinaryRecordMetadataRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsGameBinaryRecordMetadataRequest
set_by: str
tags: List[str]
ttl_config: ModelsTTLConfigDTO
Definition: ModelsTTLConfigDTO
    action: str
    expires_at: str

Example: '{"set_by": "CLIENT", "tags": ["49MW8AKQi3vxIE7m", "1tEwg150iom6BLGc", "buqgzq9q5p6WFFQ3"], "ttl_config": {"action": "DELETE", "expires_at": "1982-09-25T00:00:00Z"}}'
"""

result, error = admin_put_game_binary_recor_metadata_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
