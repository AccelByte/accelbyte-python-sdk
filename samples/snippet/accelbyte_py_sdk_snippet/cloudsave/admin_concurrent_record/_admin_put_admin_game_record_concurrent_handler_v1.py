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

Example: '{"tags": ["2oaHyjkJDHk9VCBr", "QH5KPa4Q6Xh2P6rq", "6xiIr7QlkqrjhWCb"], "updatedAt": "LMA6MDhBAmtlipua", "value": {"8iePHP9EDUFjxN8C": {}, "lbO7bxrq35EfLCGw": {}, "h6VM62nVbe1z8HSB": {}}}'
"""

result, error = admin_put_admin_game_record_concurrent_handler_v1(
    body=body,
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
