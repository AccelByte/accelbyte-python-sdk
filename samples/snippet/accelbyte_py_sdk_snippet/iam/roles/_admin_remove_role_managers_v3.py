import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_remove_role_managers_v3
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

Example: '{"managers": [{"displayName": "ZjxXW0aYlvlQiq8S", "namespace": "JMz6WRIcFA7ZZy3C", "userId": "q6SX4UdwHUqYm958"}, {"displayName": "1yYyedhGSkp9e9AX", "namespace": "mghMzULv0XzUtUCT", "userId": "sHNOaqwiLlMfn5aI"}, {"displayName": "mDClBMnKuvslhgpI", "namespace": "UPktempi92hy32ud", "userId": "EHqWFqxgCWvpHBBy"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
