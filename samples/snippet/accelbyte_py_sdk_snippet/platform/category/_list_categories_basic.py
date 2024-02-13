import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_categories_basic
from accelbyte_py_sdk.api.platform.models import BasicCategoryInfo

result, error = list_categories_basic(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
