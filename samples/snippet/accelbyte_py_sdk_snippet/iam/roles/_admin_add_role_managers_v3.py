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

Example: '{"managers": [{"displayName": "GAHihJvl86nImu4W", "namespace": "fGs6SRHtg66KkMyI", "userId": "th8rXx7ND1Sv0nf7"}, {"displayName": "DnZQdjVt6c1dypZm", "namespace": "mf0HnTEIpyxzXCFY", "userId": "101R6uRWqxjLIYj8"}, {"displayName": "O6UdtZijhnbLPi6E", "namespace": "6niamaKiFmjsvH2k", "userId": "YqjwxuMejaNivivs"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
