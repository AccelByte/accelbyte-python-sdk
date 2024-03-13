import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import refund_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderInfo
from accelbyte_py_sdk.api.platform.models import OrderRefundCreate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: OrderRefundCreate
description: str

Example: '{"description": "RqwOnCWxiWccpoD0"}'
"""

result, error = refund_order(
    order_no=order_no,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
