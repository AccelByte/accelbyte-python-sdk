import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_payment_orders
from accelbyte_py_sdk.api.platform.models import PaymentOrderSyncResult

result, error = sync_payment_orders(
    end=end,
    start=start,
    next_evaluated_key=next_evaluated_key,
    x_additional_headers=x_additional_headers,
)
