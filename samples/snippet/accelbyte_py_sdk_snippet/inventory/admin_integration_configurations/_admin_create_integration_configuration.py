import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_create_integration_configuration
from accelbyte_py_sdk.api.inventory.models import (
    ApimodelsCreateIntegrationConfigurationReq,
)
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsIntegrationConfigurationResp

"""
body:
Definition: ApimodelsCreateIntegrationConfigurationReq
map_item_type: List[str]
service_name: str
target_inventory_code: str

Example: '{"mapItemType": ["Y0o3huMmXDAfseQF", "J6SDyzx9G50enkKo", "qebtmREhkLXzUtOa"], "serviceName": "DrEnejsaPYzoAPRv", "targetInventoryCode": "QYMorFnIYDbn9HpR"}'
"""

result, error = admin_create_integration_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
