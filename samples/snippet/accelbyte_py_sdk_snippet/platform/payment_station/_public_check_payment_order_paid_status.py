import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_check_payment_order_paid_status
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderPaidResult

result, error = public_check_payment_order_paid_status(
    payment_order_no=payment_order_no,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
