import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_get_unused_reasons
from accelbyte_py_sdk.api.reporting.models import RestapiUnusedReasonListResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = admin_get_unused_reasons(
    category=category,
    extension_category=extension_category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
