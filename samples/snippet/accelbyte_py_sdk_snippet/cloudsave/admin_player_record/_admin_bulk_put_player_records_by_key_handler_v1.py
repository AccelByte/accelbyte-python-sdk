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

Example: '{"data": [{"user_id": "cKU1OoFgSG0DqUH4", "value": {"01HhqN1S9mrOiN5j": {}, "FAOVJFg2EgNZNxRC": {}, "sLKdtA8WlSUr3skY": {}}}, {"user_id": "K28XJmch5IfpujrD", "value": {"RcyJPMhhXNUH19Tw": {}, "xbpex71rYbEgZok0": {}, "ssvKX9vUaHTMjVlO": {}}}, {"user_id": "EyqxQQauV0yZ8MPp", "value": {"8JXhFcuTCoJANUYT": {}, "tICahg44UFLS0EO8": {}, "OBtTtIuOF1RZzMug": {}}}]}'
"""

result, error = admin_bulk_put_player_records_by_key_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
