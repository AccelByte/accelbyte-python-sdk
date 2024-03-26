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

Example: '{"keys": ["hknetOaBZNfyYOtc", "LX72oV7XcY0SGf0R", "hT58Qk4aStm7lFyG"]}'
"""

result, error = get_player_records_bulk_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
