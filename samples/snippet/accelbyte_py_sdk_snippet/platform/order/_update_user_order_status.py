import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_user_order_status
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderInfo
from accelbyte_py_sdk.api.platform.models import OrderUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: OrderUpdate
status: str
status_reason: str

Example: '{"status": "DELETED", "statusReason": "Sh35r7bFTYmQeqy1"}'
"""

result, error = update_user_order_status(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
