import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_assigned_users_v4
from accelbyte_py_sdk.api.iam.models import ModelListAssignedUsersV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_assigned_users_v4(
    role_id=role_id,
    after=after,
    before=before,
    limit=limit,
    x_additional_headers=x_additional_headers,
)
