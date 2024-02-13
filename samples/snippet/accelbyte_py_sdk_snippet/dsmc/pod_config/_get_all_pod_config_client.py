import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_all_pod_config_client
from accelbyte_py_sdk.api.dsmc.models import ModelsListPodConfigResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_all_pod_config_client(
    count=count,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
