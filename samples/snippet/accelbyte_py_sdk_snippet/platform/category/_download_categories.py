import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import download_categories
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import HierarchicalCategoryInfo

result, error = download_categories(
    language=language,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
