import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_role_members_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_role_members_v3(
    role_id=role_id,
    after=after,
    before=before,
    limit=limit,
    x_additional_headers=x_additional_headers,
)
