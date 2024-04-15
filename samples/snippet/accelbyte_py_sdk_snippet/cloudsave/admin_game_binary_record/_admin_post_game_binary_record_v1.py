import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_game_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameBinaryRecordCreate
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordResponse

"""
body:
Definition: ModelsGameBinaryRecordCreate
file_type: str
key: str
set_by: str
ttl_config: ModelsTTLConfigDTO
Definition: ModelsTTLConfigDTO
    action: str
    expires_at: str

Example: '{"file_type": "0FjWbU1rRnY6Rb9q", "key": "JlSQR0gbhjOcYxBZ", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1992-10-16T00:00:00Z"}}'
"""

result, error = admin_post_game_binary_record_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
