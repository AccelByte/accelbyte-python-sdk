import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_player_public_binary_records_v1
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkGetPlayerBinaryRecordResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserIDsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["razjM49Ain2mCu7t", "s9QtSTtBzgQtnhSl", "DycGHAFZCN2NROgr"]}'
"""

result, error = bulk_get_player_public_binary_records_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
