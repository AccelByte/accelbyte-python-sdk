import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_get_player_records_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetPlayerRecordsRequest
keys: List[str]

Example: '{"keys": ["S13ZnoRYySmKVc1p", "HRBiFKN3KwWH4evb", "WbCmCQjDRixLXld8"]}'
"""

result, error = admin_get_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
