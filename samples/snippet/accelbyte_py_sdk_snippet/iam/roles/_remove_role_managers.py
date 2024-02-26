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

Example: '{"Managers": [{"DisplayName": "b4MLBFM2CAjeHWI2", "Namespace": "ws1mt3OS6DjVaSht", "UserId": "88rsB7klkc9O7G6y"}, {"DisplayName": "NEd4nUXHSNhBbT8F", "Namespace": "egWbihtHo38E3SZp", "UserId": "PqkatYXnrT4hh1bN"}, {"DisplayName": "SNDROYmdNb44aCxA", "Namespace": "sBpZZo1dPJN5PMOB", "UserId": "YKZSn7AHKWF7h9iB"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
