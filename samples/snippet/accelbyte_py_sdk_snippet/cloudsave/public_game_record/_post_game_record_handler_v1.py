import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import post_game_record_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsGameRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsGameRecordRequest

Example: '{}'
"""

result, error = post_game_record_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
