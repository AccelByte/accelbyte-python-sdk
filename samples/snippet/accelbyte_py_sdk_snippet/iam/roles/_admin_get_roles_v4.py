import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_roles_v4
from accelbyte_py_sdk.api.iam.models import ModelListRoleV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_roles_v4(
    admin_role=admin_role,
    is_wildcard=is_wildcard,
    limit=limit,
    offset=offset,
    x_additional_headers=x_additional_headers,
)
