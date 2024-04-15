import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_update_inventory_configuration
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryConfigurationReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryConfigurationResp

"""
body:
Definition: ApimodelsInventoryConfigurationReq
code: str
description: str
initial_max_slots: int
max_instances_per_user: int
max_upgrade_slots: int
name: str

Example: '{"code": "0aejVdekinogrKD0", "description": "lTgN0IgiOD2zhrXB", "initialMaxSlots": 79, "maxInstancesPerUser": 65, "maxUpgradeSlots": 52, "name": "oRVJsnYX4TsV4FBM"}'
"""

result, error = admin_update_inventory_configuration(
    body=body,
    inventory_configuration_id=inventory_configuration_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
