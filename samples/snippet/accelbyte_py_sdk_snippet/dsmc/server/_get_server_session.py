import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_server_session
from accelbyte_py_sdk.api.dsmc.models import ModelsServerSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_server_session(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
