import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import increase_ticket_sale
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TicketSaleIncrementRequest
from accelbyte_py_sdk.api.platform.models import TicketSaleIncrementResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: TicketSaleIncrementRequest
count: int
order_no: str

Example: '{"count": 100, "orderNo": "3N5oiVSiiODiaEBF"}'
"""

result, error = increase_ticket_sale(
    booth_name=booth_name,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
