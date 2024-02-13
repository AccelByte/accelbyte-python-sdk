import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import delete_node_by_id
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = delete_node_by_id(
    node_ip=node_ip,
    pod_name=pod_name,
    x_additional_headers=x_additional_headers,
)
