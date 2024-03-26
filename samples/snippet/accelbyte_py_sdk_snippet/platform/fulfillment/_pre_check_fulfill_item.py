import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import pre_check_fulfill_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentItem
from accelbyte_py_sdk.api.platform.models import PreCheckFulfillmentRequest

"""
body:
Definition: PreCheckFulfillmentRequest
item_id: str
item_sku: str
quantity: int

Example: '{"itemId": "6fqLGJDOxds1uqys", "itemSku": "WVEuSrG3ZyjpLAW2", "quantity": 12}'
"""

result, error = pre_check_fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
