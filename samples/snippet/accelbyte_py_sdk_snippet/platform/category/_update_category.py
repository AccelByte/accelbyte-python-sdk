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

Example: '{"localizationDisplayNames": {"i1smA7J2cxSDH3ll": "lroRDahuDauOP2J3", "mvDW6dLbV1DWAftJ": "mWfmVunyqBXUOMyP", "uFU5S1jJrslYKjPG": "c5vDQujeFPPZqNZ1"}}'
"""

result, error = update_category(
    category_path=category_path,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
