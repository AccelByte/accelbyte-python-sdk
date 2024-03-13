import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import get_game_records_bulk
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetGameRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkGetGameRecordRequest
keys: List[str]

Example: '{"keys": ["l2ops2Kd65D82i2r", "lwTuaA5eR3qaBil7", "Crgm0QmsBoqMLVfo"]}'
"""

result, error = get_game_records_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
