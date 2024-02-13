import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import list_all_active_queue
from accelbyte_py_sdk.api.dsartifact.models import ModelsListAllQueueResponse
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = list_all_active_queue(
    limit=limit,
    next_=next_,
    node_ip=node_ip,
    pod_name=pod_name,
    previous=previous,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
