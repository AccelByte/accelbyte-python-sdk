import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_create_inventory_configuration
from accelbyte_py_sdk.api.inventory.models import (
    ApimodelsCreateInventoryConfigurationReq,
)
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryConfigurationResp

"""
body:
Definition: ApimodelsCreateInventoryConfigurationReq
code: str
description: str
initial_max_slots: int
max_instances_per_user: int
max_upgrade_slots: int
name: str

Example: '{"code": "0pTjE9NdI7oh3E86", "description": "blzoIUjOy50I9SHD", "initialMaxSlots": 16, "maxInstancesPerUser": 19, "maxUpgradeSlots": 98, "name": "Mzwv7k9Lcki6eOxN"}'
"""

result, error = admin_create_inventory_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
