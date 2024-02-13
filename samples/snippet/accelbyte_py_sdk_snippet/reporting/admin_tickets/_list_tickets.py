import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import list_tickets
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiTicketListResponse

result, error = list_tickets(
    category=category,
    extension_category=extension_category,
    limit=limit,
    offset=offset,
    order=order,
    reported_user_id=reported_user_id,
    sort_by=sort_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
