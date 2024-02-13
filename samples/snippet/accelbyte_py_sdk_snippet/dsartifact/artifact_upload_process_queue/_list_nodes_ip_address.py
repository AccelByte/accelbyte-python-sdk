import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import list_nodes_ip_address
from accelbyte_py_sdk.api.dsartifact.models import ModelsListNodesIPAddress
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = list_nodes_ip_address(
    limit=limit,
    next_=next_,
    node_ip=node_ip,
    previous=previous,
    x_additional_headers=x_additional_headers,
)
