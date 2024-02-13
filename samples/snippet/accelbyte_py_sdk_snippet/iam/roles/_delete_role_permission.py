import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import delete_role_permission
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = delete_role_permission(
    action=action,
    resource=resource,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
