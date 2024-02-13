import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_category
from accelbyte_py_sdk.api.platform.models import CategoryInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = public_get_category(
    category_path=category_path,
    language=language,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
