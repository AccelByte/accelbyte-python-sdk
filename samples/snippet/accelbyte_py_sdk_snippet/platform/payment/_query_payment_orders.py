import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_payment_orders
from accelbyte_py_sdk.api.platform.models import PaymentOrderPagingSlicedResult

result, error = query_payment_orders(
    channel=channel,
    ext_tx_id=ext_tx_id,
    limit=limit,
    offset=offset,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
