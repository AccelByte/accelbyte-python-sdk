import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get_reports_by_ticket
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReportListResponse

result, error = get_reports_by_ticket(
    ticket_id=ticket_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
