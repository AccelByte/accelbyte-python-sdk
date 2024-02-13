import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get_reason_group
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReasonGroupResponse

result, error = get_reason_group(
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
