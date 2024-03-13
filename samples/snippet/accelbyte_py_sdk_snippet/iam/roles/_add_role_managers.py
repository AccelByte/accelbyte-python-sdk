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

Example: '{"Managers": [{"DisplayName": "PdE1MKPL9wKXLA0N", "Namespace": "jGTyJwSugJpoQ6oN", "UserId": "Tp84d464hn8TFjAc"}, {"DisplayName": "fBkvDAiHwDO9jf2w", "Namespace": "sG1pNFUNCWj7gpX9", "UserId": "SThGX85aKioZ94WW"}, {"DisplayName": "yKuzfUpG0pdpkEc0", "Namespace": "ETUR9Z2F86SZKhXu", "UserId": "3QEl24lCrQSODTwq"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
