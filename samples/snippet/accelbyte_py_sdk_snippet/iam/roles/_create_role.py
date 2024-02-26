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

Example: '{"AdminRole": true, "Managers": [{"DisplayName": "X3wj10y2EniodDbN", "Namespace": "CEbuQbTKPvoPWZ9h", "UserId": "OIVpNiu6oTG6WjH5"}, {"DisplayName": "g7AWyk37QXZaJ7YH", "Namespace": "wTqUmBkxwNGefGdO", "UserId": "wwEIQ9GlUpSGLbcf"}, {"DisplayName": "3g5jasSJ4JB8bBmH", "Namespace": "OuHT1ga8NYxkNPBm", "UserId": "o7vGFB4zrv2XPrqe"}], "Members": [{"DisplayName": "90MYEYwwXdGKKw9H", "Namespace": "H4jRosw1fndMBMcO", "UserId": "JH2cqYF1ufvDE39g"}, {"DisplayName": "SNlgIAJYwNcIWC2T", "Namespace": "9rsAQt9wC1BOvMmH", "UserId": "FVJAEwWXqF4h3w5m"}, {"DisplayName": "AqKKaysvmTyxymQR", "Namespace": "pXtdJqvllTLoEtP7", "UserId": "2tJO6a0p1X7lQ3vO"}], "Permissions": [{"Action": 26, "Resource": "sgvv0JEVhKxlVB9t", "SchedAction": 25, "SchedCron": "RgRMnVHwmdnJzJNO", "SchedRange": ["VbyT3xMtGwu7LUp9", "jxy8cabDrADpocTD", "A7XjFN4UT4TdM7ax"]}, {"Action": 49, "Resource": "lQVlNTLLs262ydW0", "SchedAction": 10, "SchedCron": "YNSPIf8wipgVvvz9", "SchedRange": ["PMeGqKksNwoTMiWX", "sgc2AzCY8ReW25v1", "6TmW63Lb23sJ2vBF"]}, {"Action": 47, "Resource": "RBxIKVWX6dg7f7qt", "SchedAction": 92, "SchedCron": "BWgahxlXUSZSXQr6", "SchedRange": ["4S2cOWbSMd2Wjq0x", "Z2FkZpozsvHhf3DK", "s6ymFM5KgFruAmJa"]}], "RoleName": "8TfsR99M2ATQHSZx"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
