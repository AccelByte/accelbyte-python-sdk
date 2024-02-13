import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import acquire_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemAcquireRequest
from accelbyte_py_sdk.api.platform.models import ItemAcquireResult

"""
body:
Definition: ItemAcquireRequest
count: int
order_no: str

Example: '{"count": 23, "orderNo": "49yDLHnazKlSjcuS"}'
"""

result, error = acquire_item(
    item_id=item_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
