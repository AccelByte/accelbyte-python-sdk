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

Example: '{"Managers": [{"DisplayName": "6E9fAHrivvyJHuVu", "Namespace": "9FdQqMz43yX9ZUlz", "UserId": "q3I9QIWxNba2QKcq"}, {"DisplayName": "2mGB0jsb8ulCnDdo", "Namespace": "UfORmrQJMAEiZN6X", "UserId": "iEECaHDz98hc56Ye"}, {"DisplayName": "d7RgCyewMD4WY39c", "Namespace": "VPgHRXguxAlKzjye", "UserId": "eijHyxIbOb9JneNp"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
