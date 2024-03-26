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

Example: '{"Managers": [{"DisplayName": "SWA1vI2cj8tqKIU5", "Namespace": "uVCKy70jiySxtvwq", "UserId": "ka0xw9iN6wgQlFX8"}, {"DisplayName": "l5VJRJAXrlZRLM8i", "Namespace": "j9Fl27zlrY12YqTl", "UserId": "ot68uHKC09VC1Hc5"}, {"DisplayName": "eGyIb4VTv5VidoTp", "Namespace": "QF3TjXC7tD8r598i", "UserId": "9lhLbx76vrkGwbsf"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
