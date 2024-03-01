import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import post_game_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsPublicGameBinaryRecordCreate
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordResponse

"""
body:
Definition: ModelsPublicGameBinaryRecordCreate
file_type: str
key: str

Example: '{"file_type": "HAkWzTqczWXnr2Oy", "key": "FeCnaQCW1Cmlgert"}'
"""

result, error = post_game_binary_record_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)