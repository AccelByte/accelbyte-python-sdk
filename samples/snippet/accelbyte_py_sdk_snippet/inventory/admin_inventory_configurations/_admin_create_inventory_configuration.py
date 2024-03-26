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

Example: '{"code": "SkxQGDLm0mZmJcnm", "description": "FkBZUCRSU9MGQp3C", "initialMaxSlots": 61, "maxInstancesPerUser": 65, "maxUpgradeSlots": 33, "name": "MtzBvGlkhTdSD1Rk"}'
"""

result, error = admin_create_inventory_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
