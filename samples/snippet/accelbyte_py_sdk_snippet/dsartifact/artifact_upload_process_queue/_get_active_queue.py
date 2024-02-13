import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import get_active_queue
from accelbyte_py_sdk.api.dsartifact.models import ModelsQueue
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = get_active_queue(
    node_ip=node_ip,
    x_additional_headers=x_additional_headers,
)
