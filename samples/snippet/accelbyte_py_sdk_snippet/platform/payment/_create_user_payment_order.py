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

Example: '{"currencyCode": "m9NwvLEuLpXVlI4e", "currencyNamespace": "BSGvCNb4ZZbKb7YQ", "customParameters": {"PhHbWnqefGiqApd1": {}, "5elGEH66cVxKpTGl": {}, "V3mVo6OIJmtTll7k": {}}, "description": "1jm9XIrMS3k3mLW2", "extOrderNo": "KTxrQx4pp0OPkqCw", "extUserId": "Ka0m1ohF3rhSYV1Q", "itemType": "APP", "language": "yRB-Nlco_783", "metadata": {"yyastoWPIGDTz8je": "c6OrepZBpocVD7kM", "L7UVryHjVaPbZskq": "CgNmEswZH9oRqr07", "ZCCJWdnnOoM76iKk": "7BIqS02609nUnydG"}, "notifyUrl": "2ADHsD3mm5ttL5Yb", "omitNotification": true, "platform": "H2tkQTL6qTpCBDSS", "price": 65, "recurringPaymentOrderNo": "mLsPdmiWWTAC9Y1u", "region": "ZvQXRrcXTvZMNh7g", "returnUrl": "j7k0YA3zXqp465eP", "sandbox": false, "sku": "YaJokx9v06IlffW1", "subscriptionId": "10gl7Nx33xjW5pNm", "title": "mHBsAPM52Y6jJcf3"}'
"""

result, error = create_user_payment_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
