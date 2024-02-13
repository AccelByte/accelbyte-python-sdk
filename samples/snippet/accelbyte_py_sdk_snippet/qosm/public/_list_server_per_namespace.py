import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.qosm import list_server_per_namespace
from accelbyte_py_sdk.api.qosm.models import ModelsListServerResponse
from accelbyte_py_sdk.api.qosm.models import ResponseError

result, error = list_server_per_namespace(
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
