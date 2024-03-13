import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_role
from accelbyte_py_sdk.api.iam.models import ModelRoleResponse
from accelbyte_py_sdk.api.iam.models import ModelRoleUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleUpdateRequest
role_name: str

Example: '{"RoleName": "5grf2xRR1VIOND8A"}'
"""

result, error = update_role(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
