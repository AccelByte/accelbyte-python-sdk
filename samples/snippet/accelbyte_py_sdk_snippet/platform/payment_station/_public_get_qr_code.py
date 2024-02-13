import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_qr_code

result, error = public_get_qr_code(
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
