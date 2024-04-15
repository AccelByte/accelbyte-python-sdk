import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_user_payment_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderCreate
from accelbyte_py_sdk.api.platform.models import PaymentOrderInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PaymentOrderCreate
currency_code: str
currency_namespace: str
custom_parameters: Dict[str, Any]
description: str
ext_order_no: str
ext_user_id: str
item_type: str
language: str
metadata: Dict[str, str]
notify_url: str
omit_notification: bool
platform: str
price: int
recurring_payment_order_no: str
region: str
return_url: str
sandbox: bool
sku: str
subscription_id: str
title: str

Example: '{"currencyCode": "TixpTM6iDIDa7hI5", "currencyNamespace": "cVv3yk0FvQvQjioy", "customParameters": {"1Ge0B9BvbnJR6aER": {}, "xycGrvP2Xtkh55Tx": {}, "ovallHkRDoCK6QnO": {}}, "description": "fyJ56GCJIa1kDdx8", "extOrderNo": "ARC0cuIORzjOGgIv", "extUserId": "EIjTBuCwCsZRX3Pc", "itemType": "APP", "language": "KZ-feKs-914", "metadata": {"jSjNY4IJxYM2EQxb": "I19JIg3BKP6FyPiW", "tdVU3EBpmMqUb5wJ": "c3jU4y0TVzR85MiZ", "2RKB0SJA60QGBgW8": "wazez1aVzIJbPEnr"}, "notifyUrl": "aBHqBESFqoLjYEUw", "omitNotification": true, "platform": "af1urQ1rFHUrA7HX", "price": 91, "recurringPaymentOrderNo": "zQDZRx1VfGLuvRxs", "region": "yzUZ3jNS7qEjiRJF", "returnUrl": "jP3bauczwQtmHFZ6", "sandbox": true, "sku": "x4LXvTKqknzYCwca", "subscriptionId": "rQGgeLdcQ9HPXpBe", "title": "d0RLlpKRENT6i86P"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
