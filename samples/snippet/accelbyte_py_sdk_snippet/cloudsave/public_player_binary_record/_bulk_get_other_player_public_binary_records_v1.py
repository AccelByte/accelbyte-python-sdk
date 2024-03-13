import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    bulk_get_other_player_public_binary_records_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkGetPlayerBinaryRecordResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetPlayerRecordsRequest
keys: List[str]

Example: '{"keys": ["ln59xd6LdTvjr8kp", "aoLnEdEnTVLfLtYb", "lHlf2OuzD9tKjWV6"]}'
"""

result, error = bulk_get_other_player_public_binary_records_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
