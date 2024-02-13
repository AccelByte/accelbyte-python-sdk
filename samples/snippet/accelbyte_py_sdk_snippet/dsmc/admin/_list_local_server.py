import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_local_server
from accelbyte_py_sdk.api.dsmc.models import ModelsListServerResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = list_local_server(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
