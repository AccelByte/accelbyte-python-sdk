import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_get_all_reasons
from accelbyte_py_sdk.api.reporting.models import RestapiAdminAllReasonsResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = admin_get_all_reasons(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
