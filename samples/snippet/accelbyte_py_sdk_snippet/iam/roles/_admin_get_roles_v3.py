import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_roles_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleResponseWithManagersAndPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_roles_v3(
    after=after,
    before=before,
    is_wildcard=is_wildcard,
    limit=limit,
    x_additional_headers=x_additional_headers,
)
