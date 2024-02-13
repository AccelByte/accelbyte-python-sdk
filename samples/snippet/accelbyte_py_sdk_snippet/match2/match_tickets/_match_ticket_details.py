import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import match_ticket_details
from accelbyte_py_sdk.api.match2.models import ApiMatchTicketStatus
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = match_ticket_details(
    ticketid=ticketid,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
