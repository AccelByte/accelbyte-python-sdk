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

Example: '{"currencyCode": "PCaqMowE6ltRr3SF", "currencyNamespace": "eiYhMu7n1wwWmpuG", "customParameters": {"KMdohzbzCnbMwTxS": {}, "e2vDYZbFBUFmeMnO": {}, "dquvXLuJRs7YoAfH": {}}, "description": "4hpaC79rYIRUDNLa", "extOrderNo": "xUt7TjtJSzu2xzrX", "extUserId": "8gGXDWBS5giJkkVS", "itemType": "COINS", "language": "XlP", "metadata": {"SD5cvcJdleZr23ZT": "BRnp6HA9RlUizuKJ", "VF9j5nS5WCwu71f9": "wjKeiwEyTQVOsFmj", "0ZXT8zS3UfrxEAFZ": "vTaiNYTokoDwpCbO"}, "notifyUrl": "lFIkjcKW4NdSFTj3", "omitNotification": false, "platform": "i2RLMBN0a2NbwtVT", "price": 9, "recurringPaymentOrderNo": "lXHhoKJ10e00O2dn", "region": "JqKkmmeHYeKe143W", "returnUrl": "iGzxSzVA5No23Ayy", "sandbox": false, "sku": "6pAi1rwI5ghf9kOt", "subscriptionId": "17cGPrC6cUriGgyT", "targetNamespace": "96N3odlVEo9BO9QI", "targetUserId": "HAPh27NgEVuEqoZA", "title": "4DjNRnRnOAMyM7Cw"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
