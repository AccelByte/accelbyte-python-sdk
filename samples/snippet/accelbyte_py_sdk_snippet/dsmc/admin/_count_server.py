import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import count_server
from accelbyte_py_sdk.api.dsmc.models import ModelsCountServerResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = count_server(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
