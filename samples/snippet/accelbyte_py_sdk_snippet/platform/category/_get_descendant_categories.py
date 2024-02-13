import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_descendant_categories
from accelbyte_py_sdk.api.platform.models import FullCategoryInfo

result, error = get_descendant_categories(
    category_path=category_path,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
