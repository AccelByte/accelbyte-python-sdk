import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_bulk_get_admin_game_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetAdminGameRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetAdminGameRecordRequest
keys: List[str]

Example: '{"keys": ["dCdBA8PNoqPcnZoY", "1jf0M4o0JRn1Gmxt", "QqVEi2tD4GbtA34U"]}'
"""

result, error = admin_bulk_get_admin_game_record_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
