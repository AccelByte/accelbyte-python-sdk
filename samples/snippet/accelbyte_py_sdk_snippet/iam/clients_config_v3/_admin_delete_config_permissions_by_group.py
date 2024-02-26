import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_config_permissions_by_group
from accelbyte_py_sdk.api.iam.models import ClientmodelPermissionSetDeleteGroupRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelPermissionSetDeleteGroupRequest
group_id: str
module_id: str

Example: '{"groupId": "BUfXj6vTIG1DIcDl", "moduleId": "Pdmy0WhZnSZPx4K6"}'
"""

result, error = admin_delete_config_permissions_by_group(
    body=body,
    x_additional_headers=x_additional_headers,
)
