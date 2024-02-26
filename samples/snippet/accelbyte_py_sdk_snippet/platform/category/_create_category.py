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

Example: '{"categoryPath": "L35cTcsE73KpfYhv", "localizationDisplayNames": {"slQ7DSxEo9NQXfWH": "UnlgsiCLhfu1rbYz", "h06PoFNkKkCp4nve": "OgINzdmOK4uD9yxl", "gBcCJG4NqhvwQZoy": "uEXXRuX7vdYIcIAL"}}'
"""

result, error = create_category(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
