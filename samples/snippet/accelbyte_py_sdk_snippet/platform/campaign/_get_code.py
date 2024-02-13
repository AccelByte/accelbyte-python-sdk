import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_code
from accelbyte_py_sdk.api.platform.models import CodeInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_code(
    code=code,
    redeemable=redeemable,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
