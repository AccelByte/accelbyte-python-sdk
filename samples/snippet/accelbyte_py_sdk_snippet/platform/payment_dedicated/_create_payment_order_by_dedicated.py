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

Example: '{"currencyCode": "YYGNpdWnW6yuLLL2", "currencyNamespace": "y3VQ15NkFluyoxuf", "customParameters": {"QGFIl4c5dl4LoKLx": {}, "RH6eXtEec54OJBpE": {}, "yhZBqszVBSBgCZKO": {}}, "description": "9QVJUUHtvh3mzhL5", "extOrderNo": "T341jLMViA4GMF1X", "extUserId": "VgLGJU5LXAsVAbv5", "itemType": "CODE", "language": "vYUI-LjRu-176", "metadata": {"xcJEeKbbxMyO5DTm": "LoxZLSXC875wJoBi", "T4WyOEGJuRmkSZl4": "DlcczjYD9ZYefDAC", "yQ7e9IZLmx4y2zy7": "dB9UMOzxxsnVScx9"}, "notifyUrl": "5wwLlJiVC3ckOD0E", "omitNotification": false, "platform": "JefmLBKiRaUuqLpg", "price": 0, "recurringPaymentOrderNo": "311Gs6JaaV1g6QJr", "region": "iuj5Rpw9iSNJkbQI", "returnUrl": "eHHAp4E80TcnPhAh", "sandbox": false, "sku": "YbWUIji3e49Z7dGk", "subscriptionId": "RbhUYn7oKRca3aiB", "targetNamespace": "Ok8qL2RtmKbBJ8Pk", "targetUserId": "hMUMSSj6DeotSsiF", "title": "hR4VbVIKQUYBPgFL"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
