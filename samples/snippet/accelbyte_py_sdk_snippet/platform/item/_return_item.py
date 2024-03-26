import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import return_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ItemReturnRequest
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemReturnRequest
order_no: str

Example: '{"orderNo": "84fHvjvVEGIJ2xE4"}'
"""

result, error = return_item(
    item_id=item_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
