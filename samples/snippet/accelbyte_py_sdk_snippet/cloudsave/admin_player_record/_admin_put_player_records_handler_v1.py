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

Example: '{"data": [{"key": "vxoPZ9iYfByHaBfq", "value": {"d6S9pfXOFqw3hSPl": {}, "fZvVMyv9oU2NUp4W": {}, "in1GA5KL3DwXKc1Q": {}}}, {"key": "CyFYgpIIQpEsnSBM", "value": {"sOz78mwzrbenJSV5": {}, "AmCPBkxfFYXrQVLh": {}, "XdZ2cZaGNAYyG8cM": {}}}, {"key": "oTQoY2T4REXj0Zis", "value": {"kFil2QNZBBVEBAdt": {}, "oLlVUlhw8lxXwR3R": {}, "a0YuBEEgayneEuyh": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
