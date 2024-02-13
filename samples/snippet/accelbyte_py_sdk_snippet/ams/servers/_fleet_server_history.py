import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_server_history
from accelbyte_py_sdk.api.ams.models import ApiDSHistoryList
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = fleet_server_history(
    fleet_id=fleet_id,
    count=count,
    offset=offset,
    reason=reason,
    region=region,
    server_id=server_id,
    sort_direction=sort_direction,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
