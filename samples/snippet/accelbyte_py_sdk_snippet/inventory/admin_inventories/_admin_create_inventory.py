import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_create_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateInventoryReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryResp

"""
body:
Definition: ApimodelsCreateInventoryReq
inventory_configuration_code: str
user_id: str

Example: '{"inventoryConfigurationCode": "vYcdRXOazTHUV0Pi", "userId": "Sgd7jPlNkCq0mBFt"}'
"""

result, error = admin_create_inventory(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
