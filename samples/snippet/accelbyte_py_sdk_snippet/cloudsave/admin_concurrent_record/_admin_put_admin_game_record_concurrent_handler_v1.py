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

Example: '{"tags": ["pKe6ivs3Wdc57Aeo", "J1B81zFxy9kjXFtk", "52CdfLjKbdthwOzp"], "updatedAt": "YaPCw9obinMwNUmk", "value": {"nnnGPKS9yKCH52SN": {}, "lgKj7Ciojwt9h3b8": {}, "WwXilV8AKzYasA2B": {}}}'
"""

result, error = admin_put_admin_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
