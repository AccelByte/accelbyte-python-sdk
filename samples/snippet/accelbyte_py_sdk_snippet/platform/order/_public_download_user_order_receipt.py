import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_download_user_order_receipt
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = public_download_user_order_receipt(
    order_no=order_no,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
