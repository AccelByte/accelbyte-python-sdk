import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_category
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullCategoryInfo

result, error = delete_category(
    category_path=category_path,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
