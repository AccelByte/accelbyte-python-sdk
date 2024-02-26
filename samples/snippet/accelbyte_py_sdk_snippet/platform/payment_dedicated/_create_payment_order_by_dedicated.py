import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_payment_order_by_dedicated
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ExternalPaymentOrderCreate
from accelbyte_py_sdk.api.platform.models import PaymentOrderCreateResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ExternalPaymentOrderCreate
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
target_namespace: str
target_user_id: str
title: str

Example: '{"currencyCode": "7o9r3oswRfOXmUxV", "currencyNamespace": "8JfHWpURz9SzLf1t", "customParameters": {"mbCoYTkYFY5Larwa": {}, "RSEVXtH0YkA1n646": {}, "Xm0KvMAj8fYvFmFG": {}}, "description": "Gz5dogPp8kVEw20S", "extOrderNo": "Lzz38b7zuigozKfD", "extUserId": "hrrNk4DsPbJ6l6Qa", "itemType": "SUBSCRIPTION", "language": "kF-bhoL", "metadata": {"2FWW0ybeXW7ZWuC6": "Yws1vCVKe3H2PzYf", "N63rRlILrbUcSFnu": "2SAQxs8l1FClgerz", "BJjU3V5KKqeoUp7p": "h2tujv2iYEtYGhaT"}, "notifyUrl": "m2tIJ5k2Y4UW4QEL", "omitNotification": false, "platform": "jcDL39HuPqiTUq2u", "price": 63, "recurringPaymentOrderNo": "7J8GAKq18cjLKS4h", "region": "cRqgq9DvMnAIYH6P", "returnUrl": "d8O1V7Gg4QKFvZit", "sandbox": true, "sku": "Y6JuwgWFVNlYlgw0", "subscriptionId": "b04wRX6JKYKNtGfQ", "targetNamespace": "Xpn2SrtKm6iYjGpu", "targetUserId": "c7F3JN8nwoSuk0VV", "title": "2jWDpjMnISHRIzL6"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
