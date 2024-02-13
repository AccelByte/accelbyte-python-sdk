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

Example: '{"Managers": [{"DisplayName": "RWtYKdFlzJTmMXmZ", "Namespace": "xF6bydLYm1Q9kLGT", "UserId": "jmkeVdjaPTwDrevs"}, {"DisplayName": "2j5ICGCqtSqesIBg", "Namespace": "TJD4rzuVqsuGh36p", "UserId": "4mFUdEatxShPSnja"}, {"DisplayName": "O891l4KvKLt2f51q", "Namespace": "TI4lZlY6PhMB26fl", "UserId": "Uhb2xdKYQg3JW4im"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
