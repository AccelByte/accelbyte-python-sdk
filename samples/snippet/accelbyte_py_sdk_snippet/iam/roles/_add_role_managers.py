import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_role_managers
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequest
managers: List[AccountcommonRoleManager]
Definition: List[AccountcommonRoleManager]
    display_name: str
    namespace: str
    user_id: str

Example: '{"Managers": [{"DisplayName": "20outYswjjpOte4P", "Namespace": "Qdd039Gn22cVOzIh", "UserId": "gqxy4RL30lR9DrD5"}, {"DisplayName": "EuIhVAsXk3kirabU", "Namespace": "VM9UJK0hDBg3PJC0", "UserId": "Ry65FMsoclTRKBf8"}, {"DisplayName": "0fgUHFo6JNJmK8qo", "Namespace": "sHx9ebzDfIsiUBeY", "UserId": "WbAaDUTpOEK0QVKl"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
