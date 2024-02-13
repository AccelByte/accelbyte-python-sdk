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

Example: '{"data": [{"key": "txMStyA4OWnamc4T", "value": {"UhpkBuieUo0SXXwu": {}, "AU9DNwihxAQIshzx": {}, "jB2mVFlnWNI7C1KL": {}}}, {"key": "8rUHL7lS8EndKv2O", "value": {"WQVWBTV9XJlnBkMl": {}, "GusEyB1ZeNr0tAWf": {}, "wxxBjPIQf5ObJTB3": {}}}, {"key": "JDYjbulEGbNZhlA5", "value": {"LXnUke9jOQNcjNpj": {}, "WUnfNGnOCPRrSACe": {}, "zcEqiEIodDx7PXZz": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
