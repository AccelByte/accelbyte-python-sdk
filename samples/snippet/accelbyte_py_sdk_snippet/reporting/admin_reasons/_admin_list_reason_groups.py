import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_list_reason_groups
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReasonGroupListResponse

result, error = admin_list_reason_groups(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
