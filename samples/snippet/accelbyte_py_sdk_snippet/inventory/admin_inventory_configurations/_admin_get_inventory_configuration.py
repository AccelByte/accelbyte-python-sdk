import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_get_inventory_configuration
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryConfigurationResp

result, error = admin_get_inventory_configuration(
    inventory_configuration_id=inventory_configuration_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
