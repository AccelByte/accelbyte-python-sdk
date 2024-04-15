import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleResponseV3
from accelbyte_py_sdk.api.iam.models import ModelRoleUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleUpdateRequestV3
deletable: bool
is_wildcard: bool
role_name: str

Example: '{"deletable": true, "isWildcard": false, "roleName": "vcLaucTjRKBx8db2"}'
"""

result, error = admin_update_role_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
