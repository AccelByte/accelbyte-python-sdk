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

Example: '{"categoryPath": "tsqcJNxRIH9RFTOt", "localizationDisplayNames": {"1Uz1dXlg6hK8zi3M": "YJoNDIybqFBkirJx", "u7uOPqVlLVhjTOo6": "kDVaXsMyJgTMjxNT", "UN4ff0BADGgIHFRO": "mjBmlliw4XQXxEce"}}'
"""

result, error = create_category(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
