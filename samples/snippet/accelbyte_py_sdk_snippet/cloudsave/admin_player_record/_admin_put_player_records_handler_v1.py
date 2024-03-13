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

Example: '{"data": [{"key": "2fkSdtf7GGGhs52s", "value": {"nUJRhi5qwnX1HTQ8": {}, "dBaAcrX8Z9eiUYZ3": {}, "t6NFu3svkmbKGi4F": {}}}, {"key": "iW0jwfzIkOk6hnnE", "value": {"EoF5Hec8H01Gk00Z": {}, "4nN1UA8kGZxiSERs": {}, "kfKjH1YBOOhqnJqT": {}}}, {"key": "j6EnX5dPf9VtGgqV", "value": {"2VITHlHYsbgj0esA": {}, "aijdl9yhEWj7rOHm": {}, "UCocVoj0ackZz7dF": {}}}]}'
"""

result, error = admin_put_player_records_handler_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
