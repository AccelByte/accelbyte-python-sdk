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

Example: '{"Managers": [{"DisplayName": "LNrnAwkERcjH8liW", "Namespace": "0wjFGrhagLXDJ8ai", "UserId": "qGTsen85Hqubdg1N"}, {"DisplayName": "m5oJhxaLVBxHxwIU", "Namespace": "nsNoDahjuiLbBnZ0", "UserId": "F6VF4MB4XpYziGXS"}, {"DisplayName": "r3MewuLOdns7kHSr", "Namespace": "p49rxao8QMatbQ0c", "UserId": "4gKwR1NLP7jJXzuD"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
