import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_config
from accelbyte_py_sdk.api.dsmc.models import ModelsListConfigResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = list_config(
    x_additional_headers=x_additional_headers,
)
