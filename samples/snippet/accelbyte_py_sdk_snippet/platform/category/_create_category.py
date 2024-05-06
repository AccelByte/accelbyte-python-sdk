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

Example: '{"categoryPath": "E5MTfskLoYL19IiX", "localizationDisplayNames": {"UCYFwf4NgDDJ1Hb8": "3ZvDvYAO96cMLThQ", "pBmaq0IvM44n1RVU": "nKROpRiVTHtTMcNu", "e7aAq6doIIK1b9Bj": "dxMPcPmLf8Ns9Pm0"}}'
"""

result, error = create_category(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
