import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import update_ticket_resolutions
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiTicketResponse
from accelbyte_py_sdk.api.reporting.models import RestapiUpdateTicketResolutionsRequest

"""
body:
Definition: RestapiUpdateTicketResolutionsRequest
notes: str
status: str

Example: '{"notes": "g98JnOm3BxNw6GRK", "status": "UNKNOWN"}'
"""

result, error = update_ticket_resolutions(
    body=body,
    ticket_id=ticket_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
