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

Example: '{"currencyCode": "VvW9VgwmjGrZC7iX", "currencyNamespace": "r3TlzrN7ZhRp2gQn", "customParameters": {"psdwmJx6oywVQYPK": {}, "Dy2iEjjL2gJnlsy3": {}, "vvEtKWPapbbrsVCy": {}}, "description": "yRBZiZR4cOkdwU4n", "extOrderNo": "nDYerXJDYvwKPux5", "extUserId": "cfW7BOaqEXG8HMQs", "itemType": "CODE", "language": "MbST_pyNh_537", "metadata": {"WHTHJfcf3j9PsxYM": "AZUuEALIwUY3Dwqe", "8JZ8sFjkv75IWUrK": "URITfy8Gc1KXDSuo", "SJMLNHQthqDCbpNz": "65x0fj14uEpVU1dV"}, "notifyUrl": "zsyvGZZNvcyxNzPz", "omitNotification": false, "platform": "jDQ2xGKxqeDw7HMY", "price": 92, "recurringPaymentOrderNo": "lWPOqNUXhSLFnhSM", "region": "IIvzLlxPCLxkNVs4", "returnUrl": "reZrtMXokK7EV3JJ", "sandbox": false, "sku": "blgfDwKL3QDTjypr", "subscriptionId": "7pIm1kIancvNKm2t", "targetNamespace": "SoeQsTArN44dKB47", "targetUserId": "6eT8iQJ0Up7u5BaB", "title": "UY53QV0NBHJA9Oxz"}'
"""

result, error = create_payment_order_by_dedicated(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
