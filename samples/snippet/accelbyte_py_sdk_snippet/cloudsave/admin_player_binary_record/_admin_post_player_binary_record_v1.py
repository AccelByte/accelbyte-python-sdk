import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_player_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerBinaryRecordCreate
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsUploadBinaryRecordResponse

"""
body:
Definition: ModelsPlayerBinaryRecordCreate
file_type: str
is_public: bool
key: str
set_by: str

Example: '{"file_type": "TwbVnGcCxtSxkJoI", "is_public": true, "key": "e3wfjlWXxQOPQ4TJ", "set_by": "SERVER"}'
"""

result, error = admin_post_player_binary_record_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
