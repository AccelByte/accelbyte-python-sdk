import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_role_v4
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

Example: '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "bS7iaSqZ5S8drGOz"}'
"""

result, error = admin_create_role_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
