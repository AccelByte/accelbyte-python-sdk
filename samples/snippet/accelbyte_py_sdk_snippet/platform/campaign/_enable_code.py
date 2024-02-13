import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import enable_code
from accelbyte_py_sdk.api.platform.models import CodeInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = enable_code(
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
