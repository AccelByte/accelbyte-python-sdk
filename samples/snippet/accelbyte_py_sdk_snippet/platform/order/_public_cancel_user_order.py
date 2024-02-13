import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_cancel_user_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderInfo

result, error = public_cancel_user_order(
    order_no=order_no,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
