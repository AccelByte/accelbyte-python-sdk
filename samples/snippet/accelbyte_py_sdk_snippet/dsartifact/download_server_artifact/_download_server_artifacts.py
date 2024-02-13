import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import download_server_artifacts
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = download_server_artifacts(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
