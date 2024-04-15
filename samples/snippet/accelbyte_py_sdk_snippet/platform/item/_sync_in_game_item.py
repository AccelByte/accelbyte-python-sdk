import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_in_game_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo
from accelbyte_py_sdk.api.platform.models import InGameItemSync
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: InGameItemSync
category_path: str
target_item_id: str
target_namespace: str

Example: '{"categoryPath": "xbizB3LuYCnFt5yv", "targetItemId": "TqgWCneKzAZnmGnE", "targetNamespace": "JdhipQIB6OJDnfZs"}'
"""

result, error = sync_in_game_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
