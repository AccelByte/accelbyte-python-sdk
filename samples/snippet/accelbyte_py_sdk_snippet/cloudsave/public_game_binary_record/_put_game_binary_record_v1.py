import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_game_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBinaryRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameBinaryRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBinaryRecordRequest
content_type: str
file_location: str

Example: '{"content_type": "3pLL5iaUPJVP3o0N", "file_location": "f0aOz2otoi2SL4ML"}'
"""

result, error = put_game_binary_record_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
