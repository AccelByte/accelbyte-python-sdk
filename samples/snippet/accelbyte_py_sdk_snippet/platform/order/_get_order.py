import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderInfo

result, error = get_order(
    order_no=order_no,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
