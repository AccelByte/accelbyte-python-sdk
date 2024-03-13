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

Example: '{"currencyCode": "AmR2VWBxERePdQ6B", "currencyNamespace": "z2jHceTwm9mB8jtw", "customParameters": {"XrbJuQ14vcLnPKua": {}, "8eVtsZ6FWEdWqlDQ": {}, "uLQwqxQN6l10rQqi": {}}, "description": "I6Qt5XjDttuRFrsK", "extOrderNo": "1wBRKLqEyVa0EKeV", "extUserId": "ahGyJP1AqQJxzqtq", "itemType": "APP", "language": "ubX-vbud", "metadata": {"Z24wS2aGzrZUqPwV": "M6PjTU0n5FofUVz3", "fuMTEOMTHeH9fd0I": "yHC4l7mzOP2K9nez", "3qc2ja5Am88QvUt7": "2IiEIjIonQ9UTTYE"}, "notifyUrl": "GhktxqEpRochYhJk", "omitNotification": false, "platform": "JATj1UlAIqj8vGDU", "price": 36, "recurringPaymentOrderNo": "qBJNpgtmmRdObycI", "region": "qtHaff6tUO6x898c", "returnUrl": "u1D7qMRMVL9hXyV2", "sandbox": true, "sku": "U4R105xyMRVeDKJX", "subscriptionId": "3xO2glBx98ab5bG7", "targetNamespace": "gGSzZWKLNwQ0lFIl", "targetUserId": "y9iVb4DzWcPI5Q7a", "title": "kThcuZlJ5YGi4eYT"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
