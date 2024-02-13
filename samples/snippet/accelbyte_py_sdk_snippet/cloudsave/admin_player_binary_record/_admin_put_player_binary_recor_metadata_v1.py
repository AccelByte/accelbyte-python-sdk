import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_player_binary_recor_metadata_v1
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerBinaryRecordMetadataRequest,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerBinaryRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsPlayerBinaryRecordMetadataRequest
is_public: bool
set_by: str

Example: '{"is_public": false, "set_by": "CLIENT"}'
"""

result, error = admin_put_player_binary_recor_metadata_v1(
    body=body,
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
