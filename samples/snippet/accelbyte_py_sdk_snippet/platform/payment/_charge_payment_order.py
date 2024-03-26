import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import charge_payment_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderChargeRequest
from accelbyte_py_sdk.api.platform.models import PaymentOrderInfo

"""
body:
Definition: PaymentOrderChargeRequest
ext_tx_id: str
payment_method: str
payment_provider: str

Example: '{"extTxId": "lv5tvUxv50yGm31K", "paymentMethod": "uXs0wEu1tEqVv1vy", "paymentProvider": "ADYEN"}'
"""

result, error = charge_payment_order(
    payment_order_no=payment_order_no,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
