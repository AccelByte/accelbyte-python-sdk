import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_role
from accelbyte_py_sdk.api.iam.models import AccountcommonRole
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleCreateRequest
admin_role: bool
managers: List[AccountcommonRoleManager]
Definition: List[AccountcommonRoleManager]
    display_name: str
    namespace: str
    user_id: str
members: List[AccountcommonRoleMember]
Definition: List[AccountcommonRoleMember]
    display_name: str
    namespace: str
    user_id: str
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
role_name: str

Example: '{"AdminRole": false, "Managers": [{"DisplayName": "NcSjjbeipNaL5hHS", "Namespace": "xjuFSvRUIMo2d4M1", "UserId": "V9OJ83IPhZSMAQgS"}, {"DisplayName": "pm9rZ0we0YmhE2bR", "Namespace": "Y4x5tGh7sfSZtIHP", "UserId": "sozScqPkH6SKssil"}, {"DisplayName": "LfT3WkCpbKFxz3lO", "Namespace": "oiIXOGal2JKeASmd", "UserId": "Fk9QWdSZOoNM0QWb"}], "Members": [{"DisplayName": "ZWJ69cXXgKP7LYIq", "Namespace": "seQ6V67KcNgSZZ1r", "UserId": "8Bst2Z6CvR5cHs5S"}, {"DisplayName": "Banptd0a6pYaslhj", "Namespace": "axMKagXGzmwlwIVC", "UserId": "IFU5Vk6JyngbQtqb"}, {"DisplayName": "JjZQbrsG9rxS0bMz", "Namespace": "iu5YKXVix1NrGrCy", "UserId": "HxA3j5VqU1aMEjg4"}], "Permissions": [{"Action": 49, "Resource": "pnPVZTMDdZZKRhGH", "SchedAction": 71, "SchedCron": "hC3SSKENZ6sCFpEj", "SchedRange": ["wwcgbypyGXW7rwiR", "JCLJRxJZtcYs7DxN", "oiMh6XZVjHcJDozQ"]}, {"Action": 96, "Resource": "gNm3e28nvF8uZ325", "SchedAction": 81, "SchedCron": "gtInBLqm6OtluDFS", "SchedRange": ["4aYiqfpCxSwIwgWp", "BDrkGEnBWuGIvfpi", "hBA6TWmrMooJozMT"]}, {"Action": 26, "Resource": "G6OQMXiC8uUucwoD", "SchedAction": 57, "SchedCron": "h8jN8UlSf6D2EtPC", "SchedRange": ["Zd2dDBc5xnjiuASP", "FuvgEyBrqcZAe9cg", "i0PBR1d4w29t1z1S"]}], "RoleName": "vrcB0OSkEQ9cvwcA"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
