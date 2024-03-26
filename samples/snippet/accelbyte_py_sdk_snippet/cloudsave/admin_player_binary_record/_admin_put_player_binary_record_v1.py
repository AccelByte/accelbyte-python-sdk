import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_put_player_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBinaryRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerBinaryRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBinaryRecordRequest
content_type: str
file_location: str

Example: '{"content_type": "xSNUxnE9qTVO2lKL", "file_location": "0fMejSTiVerWNhGh"}'
"""

result, error = admin_put_player_binary_record_v1(
    body=body,
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
