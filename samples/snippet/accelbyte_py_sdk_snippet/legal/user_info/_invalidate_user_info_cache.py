import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import invalidate_user_info_cache

result, error = invalidate_user_info_cache(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
