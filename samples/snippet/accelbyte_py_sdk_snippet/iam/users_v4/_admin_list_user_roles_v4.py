import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_user_roles_v4
from accelbyte_py_sdk.api.iam.models import ModelListUserRolesV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_user_roles_v4(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
