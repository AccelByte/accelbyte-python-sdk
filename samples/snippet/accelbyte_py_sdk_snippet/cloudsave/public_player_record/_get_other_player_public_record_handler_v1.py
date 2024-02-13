import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import get_other_player_public_record_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetPlayerRecordsRequest
keys: List[str]

Example: '{"keys": ["JvHGoqQD4PlYqJdI", "YvkLFyrkLdpjHKg2", "JXjYwzIZIHYEziaY"]}'
"""

result, error = get_other_player_public_record_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
