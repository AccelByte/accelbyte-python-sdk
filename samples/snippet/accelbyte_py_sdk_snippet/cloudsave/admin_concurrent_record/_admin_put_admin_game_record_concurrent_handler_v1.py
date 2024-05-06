import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import (
    admin_put_admin_game_record_concurrent_handler_v1,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsAdminGameConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsAdminGameConcurrentRecordRequest
tags: List[str]
updated_at: str
value: Dict[str, Any]

Example: '{"tags": ["vMjsmSxhg26lrLlv", "QA19zHWpbzsrdBbx", "jrSBEBRKS4h7xWIk"], "updatedAt": "igiXuqJXmJCWO23V", "value": {"tsMuu8aMcVKEyj9A": {}, "A07iYDWRQR0lujfQ": {}, "LDijzqUnUBF01p1R": {}}}'
"""

result, error = admin_put_admin_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
