import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_client_permission_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_delete_client_permission_v3(
    action=action,
    client_id=client_id,
    resource=resource,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
