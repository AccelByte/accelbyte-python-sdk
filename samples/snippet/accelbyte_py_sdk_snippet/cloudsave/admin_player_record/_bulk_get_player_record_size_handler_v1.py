import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_player_record_size_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordSizeResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserKeyRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserKeyRequest
data: List[ModelsUserKeyRequest]
Definition: List[ModelsUserKeyRequest]
    keys: List[str]
    user_id: str

Example: '{"data": [{"keys": ["srpUDJqGLJq0awNu", "dXKkE6gpuJbZ21bv", "2j2pahNva9ARcm5q"], "user_id": "PCyiCtdhiG6wz7F4"}, {"keys": ["Mrs8wOEuTbCSIxof", "8m4mo46ADeduOLw1", "UhdoXOCk2eAUKoFA"], "user_id": "RksQMMvMPdtAzeZU"}, {"keys": ["YItSxTDRfWyXPwhp", "G6jz71CLlCj42OtK", "l9FZ4NNjQXpCQcsv"], "user_id": "8ysuAtvd3afbiYeZ"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
