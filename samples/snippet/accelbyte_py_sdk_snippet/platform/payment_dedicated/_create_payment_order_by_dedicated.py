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

Example: '{"currencyCode": "rGlvTUMYA6NZvYMl", "currencyNamespace": "Stfg7U1mDglK0ade", "customParameters": {"8TmKIil1FH9DLEXi": {}, "cwjfaairHpdAQu3j": {}, "IgnFwmfSFVes439h": {}}, "description": "3DcWrdcvD7QfsDq9", "extOrderNo": "ISM2LikY21qT8ChQ", "extUserId": "0VidJtLPP1qPDNWF", "itemType": "APP", "language": "RQ-Ihkr", "metadata": {"6ECPRdWR3BkhGBh0": "V86Xy6DsPjaOWm3s", "SoqJ8crNv8JWHjsV": "0cubR8O0az6z346N", "J85Unlf6kdnv6sU6": "KuaYoY4DwdsIhzN5"}, "notifyUrl": "W7xnly1puhuMFF2X", "omitNotification": true, "platform": "r9s0Biw8h62C9QlK", "price": 15, "recurringPaymentOrderNo": "RadwEMBNu0vWzhZe", "region": "otVrjuGBkD7DLvGs", "returnUrl": "w3UGz4e7dhtctH5p", "sandbox": true, "sku": "eLRQ68RzbkcaMr4r", "subscriptionId": "IaevibhYx3yX5OQs", "targetNamespace": "hYNFzMcUp9BcadLQ", "targetUserId": "P4D0TnuNuvWn5Bh7", "title": "Gcq2N8tikAZy4QoE"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
