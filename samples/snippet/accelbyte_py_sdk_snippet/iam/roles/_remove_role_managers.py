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

Example: '{"Managers": [{"DisplayName": "hLRFnFB4tUt44biZ", "Namespace": "6khxzqWZL5eFaHNB", "UserId": "5vdU7gwbpGldiz5l"}, {"DisplayName": "IkxtbHKv7Hlj8Okc", "Namespace": "gSrWR7SU3ZGPuDqb", "UserId": "cocvNvz3d9cLhx9w"}, {"DisplayName": "B1Mc2pmVlF5NPEMt", "Namespace": "dsWNpmHU0nXZPtb5", "UserId": "lXdeji7Ptr5IYkt5"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
