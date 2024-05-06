import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import post_player_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsPublicPlayerBinaryRecordCreate
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordResponse

"""
body:
Definition: ModelsPublicPlayerBinaryRecordCreate
file_type: str
is_public: bool
key: str

Example: '{"file_type": "ezd8fh7dpWYlEfhG", "is_public": false, "key": "LNaCWQIFdNA5v6n1"}'
"""

result, error = post_player_binary_record_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
