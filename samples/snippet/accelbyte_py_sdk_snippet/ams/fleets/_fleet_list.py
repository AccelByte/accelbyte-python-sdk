import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_list
from accelbyte_py_sdk.api.ams.models import ApiFleetListResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = fleet_list(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
