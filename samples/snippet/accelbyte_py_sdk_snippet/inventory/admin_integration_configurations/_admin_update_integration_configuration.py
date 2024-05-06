import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_update_integration_configuration
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsIntegrationConfigurationResp
from accelbyte_py_sdk.api.inventory.models import (
    ApimodelsUpdateIntegrationConfigurationReq,
)

"""
body:
Definition: ApimodelsUpdateIntegrationConfigurationReq
map_item_type: List[str]
service_name: str
target_inventory_code: str

Example: '{"mapItemType": ["uHJVWyQIXGbKp6dc", "18UAdwkezrugnN33", "1U1I9uYlHUcYmVdJ"], "serviceName": "oTJV0oSVZbeBNtdf", "targetInventoryCode": "9Qk2P8ilLcJROW36"}'
"""

result, error = admin_update_integration_configuration(
    body=body,
    integration_configuration_id=integration_configuration_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
