import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_find_extension_category_list
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import (
    RestapiExtensionCategoryListApiResponse,
)

result, error = admin_find_extension_category_list(
    order=order,
    sort_by=sort_by,
    x_additional_headers=x_additional_headers,
)
