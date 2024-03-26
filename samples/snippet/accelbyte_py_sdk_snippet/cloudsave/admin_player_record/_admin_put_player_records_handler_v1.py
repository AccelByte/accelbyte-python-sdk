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

Example: '{"data": [{"key": "Z6nnIQI42QTjUiOn", "value": {"DIlPpi6wqxisGvPS": {}, "QRUNcQM02GxcLdjY": {}, "ZyR2fKhXqMoF2mdL": {}}}, {"key": "Ls6aLMaNbamELm3U", "value": {"MOz0I4YpAaAO69ls": {}, "fH6hOXwNo4yJCEGd": {}, "TFkEru7biaIdGRqt": {}}}, {"key": "qNK8lLY6JBFjebuE", "value": {"xwuMDbNxixm4XwBs": {}, "Fsofr26QhOLisUTa": {}, "Hs6Zwxyu9dNUPlJG": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
