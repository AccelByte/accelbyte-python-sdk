import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_update_status_integration_configuration
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsIntegrationConfigurationResp
from accelbyte_py_sdk.api.inventory.models import (
    ApimodelsUpdateStatusIntegrationConfigurationReq,
)

"""
body:
Definition: ApimodelsUpdateStatusIntegrationConfigurationReq
status: str

Example: '{"status": "INIT"}'
"""

result, error = admin_update_status_integration_configuration(
    body=body,
    integration_configuration_id=integration_configuration_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
