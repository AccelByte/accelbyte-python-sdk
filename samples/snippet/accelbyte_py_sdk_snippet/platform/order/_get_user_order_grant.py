import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_order_grant
from accelbyte_py_sdk.api.platform.models import OrderGrantInfo

result, error = get_user_order_grant(
    order_no=order_no,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
