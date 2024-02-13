import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import list_queue
from accelbyte_py_sdk.api.dsartifact.models import ModelsListQueueResponse
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = list_queue(
    node_ip=node_ip,
    limit=limit,
    next_=next_,
    previous=previous,
    x_additional_headers=x_additional_headers,
)
