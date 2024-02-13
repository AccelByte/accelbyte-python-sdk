import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_get_reason
from accelbyte_py_sdk.api.reporting.models import RestapiAdminReasonResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = admin_get_reason(
    reason_id=reason_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
