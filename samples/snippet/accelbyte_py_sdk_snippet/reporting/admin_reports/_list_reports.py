import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import list_reports
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReportListResponse

result, error = list_reports(
    category=category,
    limit=limit,
    offset=offset,
    reported_user_id=reported_user_id,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
