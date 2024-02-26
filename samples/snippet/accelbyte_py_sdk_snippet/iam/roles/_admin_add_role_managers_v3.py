import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_managers_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequestV3
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"managers": [{"displayName": "yMcT42gFz4t027xg", "namespace": "nVxll0huT6aXFSJL", "userId": "J2f40aN7VYUVHuI1"}, {"displayName": "khlHp8TUwfuLSNKW", "namespace": "rvTWyS8T9UTCQiiB", "userId": "sQkWXvkyDTdd85n7"}, {"displayName": "ClMWdexpOLW2iQAO", "namespace": "RgjBxw3DiMcxP0yn", "userId": "02sim4HwYSIpIYbl"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
