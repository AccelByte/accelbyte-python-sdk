import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get_ticket_detail
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiTicketResponse

result, error = get_ticket_detail(
    ticket_id=ticket_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
