import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_player_record_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsPlayerRecordRequest

Example: '{}'
"""

result, error = put_player_record_handler_v1(
    body=body,
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
