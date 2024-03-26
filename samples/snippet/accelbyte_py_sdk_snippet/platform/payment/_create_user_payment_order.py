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

Example: '{"currencyCode": "hyL26rTdZghzsm7e", "currencyNamespace": "v3afpAw2V8htTRzl", "customParameters": {"aMvhk7MmxiMgJkU4": {}, "huouB1BK60iloLIo": {}, "IINb7Lwvcv8SP6Z0": {}}, "description": "hZ3ja14u0UWCDUUq", "extOrderNo": "2md3tx9fuORbiNGZ", "extUserId": "niHkhkRvQfCYefyW", "itemType": "APP", "language": "ox", "metadata": {"tVq7AHbD5TbIG3Pr": "EvFqCp0ELMEGwZ97", "sEBpls9uP48nBU5y": "SeGz7KVLKhF4WZhG", "Kh2jmsNi5qWR2jnf": "yuLWdZucCr7Ox65W"}, "notifyUrl": "Q9oxro3ulipvgMw3", "omitNotification": false, "platform": "RwhePDbzs2Fzekl0", "price": 86, "recurringPaymentOrderNo": "jQTt98Kz3ubmGV8v", "region": "P3y9sbiCGOfMsdtq", "returnUrl": "ugIepeen4pJhKgy3", "sandbox": true, "sku": "UNQjNqrW8y0x4Nsu", "subscriptionId": "42HhTTrqS2nV6kcY", "title": "5RUF6ES1VXBIsUKn"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
