import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_admin_player_record_by_user_ids_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserIDsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["RwzdQWVbjx10RN8Y", "J8Hbc4G6yOUN5MC6", "Kc7aodyDi744ShJ7"]}'
"""

result, error = bulk_get_admin_player_record_by_user_ids_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
