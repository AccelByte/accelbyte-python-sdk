import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import refund_payment_order_by_dedicated
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderRefund
from accelbyte_py_sdk.api.platform.models import PaymentOrderRefundResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentOrderRefund
description: str

Example: '{"description": "Vo4fQ0014M09aMOg"}'
"""

result, error = refund_payment_order_by_dedicated(
    payment_order_no=payment_order_no,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
