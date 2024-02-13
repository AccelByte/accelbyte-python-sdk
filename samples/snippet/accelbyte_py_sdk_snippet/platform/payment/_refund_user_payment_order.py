import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import refund_user_payment_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderInfo
from accelbyte_py_sdk.api.platform.models import PaymentOrderRefund
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentOrderRefund
description: str

Example: '{"description": "F1PHisMn6JO2C7cy"}'
"""

result, error = refund_user_payment_order(
    payment_order_no=payment_order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
