import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_server_info
from accelbyte_py_sdk.api.ams.models import ApiFleetServerInfoResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = fleet_server_info(
    server_id=server_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
