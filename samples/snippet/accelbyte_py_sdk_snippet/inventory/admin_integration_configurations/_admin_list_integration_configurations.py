import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_list_integration_configurations
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import (
    ApimodelsListIntegrationConfigurationsResp,
)

result, error = admin_list_integration_configurations(
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
