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

Example: '{"data": [{"key": "AEZGDmZUsSzBdJnr", "value": {"5brfgZRSE50OGsIE": {}, "skBuJ11KcehgDI23": {}, "tGgXY0vRYojScZsu": {}}}, {"key": "VKO7FmEI9yJf9D5B", "value": {"rqf1FKfJ5EZ3Xwnf": {}, "EGWp8QeAJ1wpZdXF": {}, "3QAN0CyciB942KQA": {}}}, {"key": "FHoF9HLG849E7t6x", "value": {"JQPcgV0vk4cePiM5": {}, "C5wraHN3ODHJbmdI": {}, "nxcOpbSdOGLD0Veg": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
