import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import get_player_records_bulk_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetPlayerRecordsRequest
keys: List[str]

Example: '{"keys": ["WKwRZUtcUgGO6gEi", "sgIYfEuqxYErot79", "2FqS2ieNdOecpyT9"]}'
"""

result, error = get_player_records_bulk_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
