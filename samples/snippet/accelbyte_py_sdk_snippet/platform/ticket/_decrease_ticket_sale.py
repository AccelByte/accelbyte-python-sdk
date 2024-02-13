import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import decrease_ticket_sale
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TicketSaleDecrementRequest
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: TicketSaleDecrementRequest
order_no: str

Example: '{"orderNo": "zePv2jH9ODMWYV8t"}'
"""

result, error = decrease_ticket_sale(
    booth_name=booth_name,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
