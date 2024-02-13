import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_user_order_histories
from accelbyte_py_sdk.api.platform.models import OrderHistoryInfo

result, error = public_get_user_order_histories(
    order_no=order_no,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
