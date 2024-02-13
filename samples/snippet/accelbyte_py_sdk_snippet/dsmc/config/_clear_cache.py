import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import clear_cache
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = clear_cache(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
