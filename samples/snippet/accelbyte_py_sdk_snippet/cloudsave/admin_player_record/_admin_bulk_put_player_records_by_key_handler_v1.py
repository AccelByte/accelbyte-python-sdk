import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_bulk_put_player_records_by_key_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkUpdatePlayerRecordByKeyResponse,
)
from accelbyte_py_sdk.api.cloudsave.models import (
    ModelsBulkUpdatePlayerRecordsByKeyRequest,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUpdatePlayerRecordsByKeyRequest
data: List[ModelsBulkUpdatePlayerRecordByKeyRequestDetail]
Definition: List[ModelsBulkUpdatePlayerRecordByKeyRequestDetail]
    user_id: str
    value: Dict[str, Any]

Example: '{"data": [{"user_id": "j9JJpRmYoqz1Vywz", "value": {"Wj7UNTCW8fP6j2Oi": {}, "qc9I6lJXFuh8UtKk": {}, "NVsvQJXqAzQkQdDr": {}}}, {"user_id": "t1sVojIzct7nDxFz", "value": {"QIYy04IIVLyYKRxm": {}, "AXpAmKjJy6jxS0YJ": {}, "78tsTSjSUFTGv2Zo": {}}}, {"user_id": "39ZajH05umReWlEl", "value": {"ndyRwNaTBbS4DuIY": {}, "3oRCJL1eVATS6J2R": {}, "8esdWJjgmnt8isKh": {}}}]}'
"""

result, error = admin_bulk_put_player_records_by_key_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
