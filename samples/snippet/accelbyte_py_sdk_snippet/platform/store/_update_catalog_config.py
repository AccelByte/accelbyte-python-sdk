import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_catalog_config
from accelbyte_py_sdk.api.platform.models import CatalogConfigInfo
from accelbyte_py_sdk.api.platform.models import CatalogConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CatalogConfigUpdate
enable_inventory_check: bool

Example: '{"enableInventoryCheck": true}'
"""

result, error = update_catalog_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
