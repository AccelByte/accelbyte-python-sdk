import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_server_connection_info
from accelbyte_py_sdk.api.ams.models import ApiFleetServerConnectionInfoResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = fleet_server_connection_info(
    server_id=server_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
