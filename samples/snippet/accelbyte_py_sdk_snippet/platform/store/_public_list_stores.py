import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_list_stores
from accelbyte_py_sdk.api.platform.models import StoreInfo

result, error = public_list_stores(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
