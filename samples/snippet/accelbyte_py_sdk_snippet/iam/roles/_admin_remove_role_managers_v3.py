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

Example: '{"managers": [{"displayName": "KpRhRLohkFhGmUtb", "namespace": "KEy6CHbBoqAOFJNC", "userId": "2RY1Jw05vBhDODgF"}, {"displayName": "wgJJo1cnQ2pzmWKh", "namespace": "96evPFedvJi6TdH1", "userId": "kU7Whi7bc2saCKbu"}, {"displayName": "3HioP0qF8e0gxhEJ", "namespace": "K4PTrOV6J5ZHhanW", "userId": "WKUJ2byTXds1yF7T"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
