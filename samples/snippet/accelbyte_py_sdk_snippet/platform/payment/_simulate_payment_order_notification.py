import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import simulate_payment_order_notification
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import NotificationProcessResult
from accelbyte_py_sdk.api.platform.models import PaymentOrderNotifySimulation

"""
body:
Definition: PaymentOrderNotifySimulation
amount: int
currency_code: str
notify_type: str
payment_provider: str
sales_tax: int
vat: int

Example: '{"amount": 79, "currencyCode": "bcDyHuiFJrTdIO9e", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 61, "vat": 12}'
"""

result, error = simulate_payment_order_notification(
    payment_order_no=payment_order_no,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
