import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dslogmanager import check_server_logs
from accelbyte_py_sdk.api.dslogmanager.models import ModelsLogFileStatus
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError

result, error = check_server_logs(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
