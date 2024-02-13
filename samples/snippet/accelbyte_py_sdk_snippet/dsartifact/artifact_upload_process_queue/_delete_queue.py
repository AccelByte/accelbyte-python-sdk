import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import delete_queue
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = delete_queue(
    node_ip=node_ip,
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
