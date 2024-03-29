import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_bulk_get_player_records_by_user_i_ds_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserIDsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["meXWd27Ys9ilo0O3", "v7J7XZY3aP6X4VCB", "mQOIz9mGuHtZtD5A"]}'
"""

result, error = admin_bulk_get_player_records_by_user_i_ds_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
