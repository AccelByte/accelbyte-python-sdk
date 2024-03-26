import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_role_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonRoleV3
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateV3Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleCreateV3Request
admin_role: bool
deletable: bool
is_wildcard: bool
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str
members: List[AccountcommonRoleMemberV3]
Definition: List[AccountcommonRoleMemberV3]
    display_name: str
    namespace: str
    user_id: str
permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
role_name: str

Example: '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "rfIbyBAbdgDfLcmt", "namespace": "BGBnqsRI5zvoYZjG", "userId": "v4cyX2vdm6EZNzUf"}, {"displayName": "1qVHbH8HIiuaiaVY", "namespace": "X8KTxvUwfrvlUjUk", "userId": "gfrjoN9sOUYpg3DD"}, {"displayName": "wIB6uyTbU2biuizW", "namespace": "O1CyJUK0S4s6onLC", "userId": "HqJWmGqGLCfCrmSt"}], "members": [{"displayName": "cPQRdQafEIUMZ3YV", "namespace": "nrgCc7DijG2ZjcbN", "userId": "B0RFWzCbGXFGRQrf"}, {"displayName": "jHxdsz2OaB1mUlwH", "namespace": "Adu99ESY8X6TMdg8", "userId": "MOO0PXRCobVK37uF"}, {"displayName": "huI6CdmYzpPUFbsK", "namespace": "imMrR0jwrfyj30Td", "userId": "ZVPodUzZ5cdeAJut"}], "permissions": [{"action": 39, "resource": "0RkDd0m9WUHzEDLk", "schedAction": 90, "schedCron": "RyF5acL6BsLockOD", "schedRange": ["65Tc2UAmDHHI4wgm", "9YaoUIloH7cIf9za", "z9m7GZDh7XwyxDsT"]}, {"action": 40, "resource": "otJn68ZJXFASE6Y0", "schedAction": 23, "schedCron": "IONzTAEgKZq08j0u", "schedRange": ["xTPGrQ46u7Y5Iurc", "IE3HdKFwSOydDWQL", "UI2olzBc4UIygpeG"]}, {"action": 39, "resource": "lp8L2MXwjp3lZFM8", "schedAction": 14, "schedCron": "QkBRWe4Elc39Ji5V", "schedRange": ["QJxaWoOP5P4xTb2u", "OW5437qbutm66Ocm", "0YPC6O8VNLp4z94p"]}], "roleName": "40qGFXLCVrsajOYe"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
