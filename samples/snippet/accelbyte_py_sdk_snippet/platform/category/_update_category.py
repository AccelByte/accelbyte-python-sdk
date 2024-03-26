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

Example: '{"localizationDisplayNames": {"8MGaXKLdmRCdzRxL": "QZ2FIYvLXSiBWSsu", "BUH7rCGTr3UIQEGQ": "0bEYh10QoIqaZeUP", "YMa2WlMFmnrfF2om": "87uqlAlC2qOrfv7m"}}'
"""

result, error = update_category(
    category_path=category_path,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
