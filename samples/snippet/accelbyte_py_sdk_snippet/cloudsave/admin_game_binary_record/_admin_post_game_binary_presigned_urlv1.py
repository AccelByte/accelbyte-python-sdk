import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_game_binary_presigned_urlv1
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordResponse

"""
body:
Definition: ModelsUploadBinaryRecordRequest
file_type: str

Example: '{"file_type": "YnYcSo6qyAYtDDlX"}'
"""

result, error = admin_post_game_binary_presigned_urlv1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
