import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import put_game_record_concurrent_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsConcurrentRecordRequest
updated_at: str
value: Dict[str, Any]

Example: '{"updatedAt": "WHMbJ5impuP1ok4X", "value": {"55z3v123xFOSapYB": {}, "iaqnTWnbizXgcD4H": {}, "HuyjkLTQTI9kVQ1F": {}}}'
"""

result, error = put_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)