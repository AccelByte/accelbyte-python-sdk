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

Example: '{"currencyCode": "oq4F0x1v2txuL8us", "currencyNamespace": "78fGDCH24rfHlMkp", "customParameters": {"BtIggnD1rnwOTEx9": {}, "YUPaHfaaZDBwfBvX": {}, "IY9QQfCxVfEqfPLX": {}}, "description": "e23CWGbwP9apzyS6", "extOrderNo": "hua7ylcQZmfaYFK2", "extUserId": "lPgYKq38s0NDJjcr", "itemType": "SUBSCRIPTION", "language": "FGNk-XVLc_Yq", "metadata": {"N3eNCJtwH2PRR5NZ": "hglqHWlCRIEgaobC", "IQN1Lzj4bYmqIW2F": "o90MBcF2koN7MmEr", "CNqyhrAKzgYQH18a": "zaW3LmiylJ9xNwG6"}, "notifyUrl": "4wei2KVIbp2eZYI0", "omitNotification": true, "platform": "nvlRvxD2M1BESJYY", "price": 95, "recurringPaymentOrderNo": "Csfu2HoflBNM08cN", "region": "XXEgvoJ4IczRoSt6", "returnUrl": "9UjkBlFpDQpIfPGy", "sandbox": false, "sku": "gubPAY4ozaF5FBeO", "subscriptionId": "xGjd2lgRJafQuU8V", "title": "FAi9mFWQloByG2Uh"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
