import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_override_region_override
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_override_region_override(
    deployment=deployment,
    region=region,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
