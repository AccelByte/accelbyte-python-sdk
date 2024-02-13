import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dslogmanager import get_server_logs
from accelbyte_py_sdk.api.dslogmanager.models import ModelsServerLogs
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError

result, error = get_server_logs(
    pod_name=pod_name,
    log_type=log_type,
    offset=offset,
    origin=origin,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
