import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_category
from accelbyte_py_sdk.api.platform.models import CategoryCreate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullCategoryInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CategoryCreate
category_path: str
localization_display_names: Dict[str, str]

Example: '{"categoryPath": "rQ5p5KLJBdqIyJIs", "localizationDisplayNames": {"CwMHBPljlGgYzi64": "tOka4TMWEMGUc7rU", "Rl0YDvMHcP6HoKpR": "TWWiKLNJs6Ig3sld", "S18o8nolFeuzphSX": "1YhmijQwdwFBengr"}}'
"""

result, error = create_category(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
