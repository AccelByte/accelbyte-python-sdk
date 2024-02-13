import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import acquire_user_ticket
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TicketAcquireRequest
from accelbyte_py_sdk.api.platform.models import TicketAcquireResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: TicketAcquireRequest
count: int
order_no: str

Example: '{"count": 11, "orderNo": "opYrIIZcHdAEDn0S"}'
"""

result, error = acquire_user_ticket(
    booth_name=booth_name,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
