import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dslogmanager import download_server_logs
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError

result, error = download_server_logs(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
