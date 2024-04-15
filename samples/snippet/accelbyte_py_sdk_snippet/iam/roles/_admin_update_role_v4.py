import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_v4
from accelbyte_py_sdk.api.iam.models import ModelRoleV4Request
from accelbyte_py_sdk.api.iam.models import ModelRoleV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleV4Request
admin_role: bool
deletable: bool
is_wildcard: bool
role_name: str

Example: '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "pSAKSDCk49X5N62N"}'
"""

result, error = admin_update_role_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
