import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import import_config_v1
from accelbyte_py_sdk.api.dsmc.models import ModelsImportResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = import_config_v1(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
