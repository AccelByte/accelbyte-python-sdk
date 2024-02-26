import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_player_binary_recor_metadata_v1
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsPlayerBinaryRecordMetadataPublicRequest,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerBinaryRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsPlayerBinaryRecordMetadataPublicRequest
is_public: bool

Example: '{"is_public": false}'
"""

result, error = put_player_binary_recor_metadata_v1(
    body=body,
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
