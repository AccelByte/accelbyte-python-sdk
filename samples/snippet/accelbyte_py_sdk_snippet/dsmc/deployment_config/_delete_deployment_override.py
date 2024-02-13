import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_deployment_override
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_deployment_override(
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
