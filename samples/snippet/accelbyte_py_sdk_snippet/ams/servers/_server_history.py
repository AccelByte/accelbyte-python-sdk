import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import server_history
from accelbyte_py_sdk.api.ams.models import ApiFleetServerHistoryResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = server_history(
    server_id=server_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
