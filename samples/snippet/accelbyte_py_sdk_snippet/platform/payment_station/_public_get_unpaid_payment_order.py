import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_unpaid_payment_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderDetails

result, error = public_get_unpaid_payment_order(
    payment_order_no=payment_order_no,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
