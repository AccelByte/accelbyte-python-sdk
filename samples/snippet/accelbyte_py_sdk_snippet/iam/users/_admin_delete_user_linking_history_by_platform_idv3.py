import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_linking_history_by_platform_idv3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_delete_user_linking_history_by_platform_idv3(
    platform_id=platform_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
