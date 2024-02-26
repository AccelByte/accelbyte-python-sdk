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

Example: '{"currencyCode": "TEqp1I6rWESP4RbJ", "currencyNamespace": "tMr5H9hfh3HEgh14", "customParameters": {"x14lHljZJTdCXfmj": {}, "4lkDyJiBnibm2O49": {}, "vFRWtQwNewSJ1ft9": {}}, "description": "5J5kJ1WQi8MXsh2t", "extOrderNo": "vxdEsHJDskeHWJ7W", "extUserId": "9bMtL3L7kTKH92Un", "itemType": "INGAMEITEM", "language": "wd", "metadata": {"MXwtCqR48J8Jhxc2": "BMqo8tJb0yCkitUE", "oTTK7mTO0XxUroOF": "tiUp81xrPYaTGz4k", "Rd1wM8YDJyR3i671": "bnHYLwhyOVBpUkTD"}, "notifyUrl": "UhkgRuOHuDtzPRyX", "omitNotification": false, "platform": "sNnP3viMHakYLbth", "price": 94, "recurringPaymentOrderNo": "VIhVLvIuJlibVmoe", "region": "Bu2mXvVWCjqsidEp", "returnUrl": "IibB5StpOM6KJ8lY", "sandbox": true, "sku": "hu4YdlrtHeQoOXst", "subscriptionId": "5nzmvqzygJ9mqNmZ", "title": "ZUK9jLOnBa47o6eX"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
