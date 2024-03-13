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

Example: '{"data": [{"user_id": "F8vHZZS9JPWE87mB", "value": {"m1Wm2SickwjfHIPJ": {}, "Rl8wku5k0DThKzjl": {}, "MxGhkOKOAtbaDKk9": {}}}, {"user_id": "Z3sEOHfGJ1AgPrpU", "value": {"jFcxDMrwXhvb0b7P": {}, "L2sMoUGmgIRj9zQE": {}, "ybsLVWwjLbuBo48T": {}}}, {"user_id": "utpCqfWepgdpyWC9", "value": {"wARP4ZFhV83WbEbP": {}, "U1kWC3PJbXtMga0H": {}, "N14S6jIdHsFwo0CI": {}}}]}'
"""

result, error = admin_bulk_put_player_records_by_key_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
