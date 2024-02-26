import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_client_available_permissions
from accelbyte_py_sdk.api.iam.models import ClientmodelListClientPermissionSet
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_client_available_permissions(
    exclude_permissions=exclude_permissions,
    x_additional_headers=x_additional_headers,
)
