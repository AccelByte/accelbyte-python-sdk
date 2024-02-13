import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import delete_ticket
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = delete_ticket(
    ticket_id=ticket_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
