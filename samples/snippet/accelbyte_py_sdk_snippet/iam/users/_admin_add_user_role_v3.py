import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_user_role_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_add_user_role_v3(
    role_id=role_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
