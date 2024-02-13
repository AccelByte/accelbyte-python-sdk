import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_server_client
from accelbyte_py_sdk.api.dsmc.models import ModelsListServerResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = list_server_client(
    count=count,
    offset=offset,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
