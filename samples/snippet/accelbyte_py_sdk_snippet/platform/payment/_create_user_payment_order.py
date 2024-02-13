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

Example: '{"currencyCode": "ifntgdoe9QfIYI1V", "currencyNamespace": "fLgI7PZFEq3eEpcs", "customParameters": {"ybEco0rdUkYQvc4U": {}, "NotV3jA4XKsNuHaq": {}, "WIxnBUXzycGqJ22x": {}}, "description": "Ppg0jlmpS4poqXp3", "extOrderNo": "cUPWCQXtJqPPkm7z", "extUserId": "6cdP52VbtI7OwXmQ", "itemType": "SUBSCRIPTION", "language": "ApAl", "metadata": {"V2ThhorFwrYQg4gU": "1haMxDIBPgyYyD3c", "AvJ20Eap3DIIz5tz": "CrzWmWH4XKfAAHiT", "ajXF6HCJgr0qhbca": "EoGYi1Oe1wiZsj5s"}, "notifyUrl": "nR3m9krTKBICuz2B", "omitNotification": true, "platform": "7lokR0Z9ERs7oKhr", "price": 58, "recurringPaymentOrderNo": "j5Od33DPW0tRlZOG", "region": "QFma8YKLzDcnGR6a", "returnUrl": "u8lgz7EL6UB3KNdv", "sandbox": false, "sku": "4l18SHdWwN46Wf9x", "subscriptionId": "F9zl4C2i2VrJBFyi", "title": "5F3S76DEiXhNizgk"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
