import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import delete_user_permission
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = delete_user_permission(
    action=action,
    resource=resource,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
