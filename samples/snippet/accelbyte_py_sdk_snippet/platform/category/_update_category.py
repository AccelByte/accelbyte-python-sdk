import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_category
from accelbyte_py_sdk.api.platform.models import CategoryUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullCategoryInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CategoryUpdate
localization_display_names: Dict[str, str]

Example: '{"localizationDisplayNames": {"h1FMMJDbICIg209g": "MVJk952jIkVVd7fQ", "UsFXghJwZhnkFq58": "aNLYbKMeMmT8Lctc", "tdKPCS42VR1T8W7W": "UocD8dpegcuLsUl1"}}'
"""

result, error = update_category(
    category_path=category_path,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
