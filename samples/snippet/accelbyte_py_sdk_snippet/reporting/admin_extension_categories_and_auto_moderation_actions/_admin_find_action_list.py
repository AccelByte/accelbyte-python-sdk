import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_find_action_list
from accelbyte_py_sdk.api.reporting.models import RestapiActionListApiResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = admin_find_action_list(
    x_additional_headers=x_additional_headers,
)
