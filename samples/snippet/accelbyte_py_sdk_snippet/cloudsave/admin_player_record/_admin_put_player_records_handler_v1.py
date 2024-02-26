import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_player_records_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUpdatePlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUpdatePlayerRecordsRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUpdatePlayerRecordsRequest
data: List[ModelsBulkUpdatePlayerRecordRequestDetail]
Definition: List[ModelsBulkUpdatePlayerRecordRequestDetail]
    key: str
    value: Dict[str, Any]

Example: '{"data": [{"key": "yOUzkJAadE3nkLlL", "value": {"x1oOZo09qPtb5Peo": {}, "lPGbBhHUcqRhPp7e": {}, "79mxaaGcbSFboJt7": {}}}, {"key": "zkCICpg55w8nhLE0", "value": {"h7SjGPark0eXClhN": {}, "8qdJrJr6iEDvgv7L": {}, "Qq0rDadvNyYybH8u": {}}}, {"key": "NP2asPeRrcRwK5gW", "value": {"PTxVAXmclglcCeps": {}, "i5RLqAnxCR8TqYf6": {}, "9Ay3Nugl66EQC9oy": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
