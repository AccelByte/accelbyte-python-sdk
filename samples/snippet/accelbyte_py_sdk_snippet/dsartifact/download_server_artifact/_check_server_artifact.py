import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import check_server_artifact
from accelbyte_py_sdk.api.dsartifact.models import ModelsArtifactFileStatus
from accelbyte_py_sdk.api.dsartifact.models import ResponseError

result, error = check_server_artifact(
    pod_name=pod_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
