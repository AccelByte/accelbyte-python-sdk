import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import remove_role_managers
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

Example: '{"Managers": [{"DisplayName": "4pyhJ3mEPCKq8HMs", "Namespace": "hFcSNvWQDXGQh9Dp", "UserId": "5DeUBnzTRTJ5Mm5v"}, {"DisplayName": "6zG0i44yiwSfl5LC", "Namespace": "zvygXyzBxE2JBunG", "UserId": "6yKR1Zb5L3XVBSjb"}, {"DisplayName": "ItZ4wU2OjMM0JQgX", "Namespace": "J2Xa9iCiRkdvHrIm", "UserId": "z9yTCTU9bxYNZOSK"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
