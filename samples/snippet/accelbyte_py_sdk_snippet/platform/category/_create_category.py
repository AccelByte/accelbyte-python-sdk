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

Example: '{"categoryPath": "BMW0LL142ylKA6kv", "localizationDisplayNames": {"ow2wa8ml0ce90kF5": "qCrs0QqmV6FQCnFA", "ygR1sNVwyNquP4kP": "9YveqRA6igtGTJMa", "hfPGLYOtoAq5Ddap": "97A2nC6k0HhwOnw3"}}'
"""

result, error = create_category(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
