import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_my_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkGetPlayerBinaryRecordResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetPlayerRecordsRequest
keys: List[str]

Example: '{"keys": ["KI3hHrbsYRpQDZ9N", "m8V87my4o6IlYxFP", "lIAKQRTs10WjJV8B"]}'
"""

result, error = bulk_get_my_binary_record_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
