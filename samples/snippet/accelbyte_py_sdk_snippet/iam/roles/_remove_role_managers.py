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

Example: '{"Managers": [{"DisplayName": "QnudyMIoIMkkp5E3", "Namespace": "2sK7YKR1pLRqJtNL", "UserId": "rgVwLtPCHfHwi98y"}, {"DisplayName": "xh0inpkxzrL13PCJ", "Namespace": "WJfP6BZHQyjNloe9", "UserId": "SK7PcSeFS0qUUUef"}, {"DisplayName": "pzqltVMs3xi7LLUW", "Namespace": "qsTCtLPaxOUElGDu", "UserId": "9chY49Rov94RnsaG"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
