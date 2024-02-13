import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_my_zip_code
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserZipCode

result, error = get_my_zip_code(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
