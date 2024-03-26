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

Example: '{"set_by": "CLIENT", "tags": ["zCeJa2ChS4v9wxjR", "k5h5H3XggNiP43oA", "Le3nnvJFdaGs9iWx"], "ttl_config": {"action": "DELETE", "expires_at": "1993-04-14T00:00:00Z"}}'
"""

result, error = admin_put_game_binary_recor_metadata_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
