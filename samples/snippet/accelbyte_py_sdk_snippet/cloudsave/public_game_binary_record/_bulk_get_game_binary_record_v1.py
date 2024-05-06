import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_game_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameBinaryRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetGameRecordRequest
keys: List[str]

Example: '{"keys": ["dKIKVZKmGW4qnXxo", "ZnEfNuaXkWSRi1Pd", "MMftFyz0QBtPV0pv"]}'
"""

result, error = bulk_get_game_binary_record_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
