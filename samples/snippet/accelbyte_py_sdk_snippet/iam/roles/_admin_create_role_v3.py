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

Example: '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "7hyr9h9z6pTVUUkM", "namespace": "kE9Txat2noWamLMU", "userId": "9CkQfOqP3JXbdMoU"}, {"displayName": "E8X8m4SXxlKTTJEN", "namespace": "1yAZdViKlnG0FW25", "userId": "IUyKINVY58eMP0qb"}, {"displayName": "UyJjRPU7le3Mi3a8", "namespace": "HwHRRUKaJkRTdFLP", "userId": "teJkJLXTX9J2Isil"}], "members": [{"displayName": "bbvoHY8IO02yfzIs", "namespace": "M06ijWTctiTLRoUY", "userId": "SivECa8ZRDSvQpx6"}, {"displayName": "h4ekqa0qlZhuW110", "namespace": "7kqr8zjMw3EYJqqX", "userId": "AegYVOGYsd0tl6lQ"}, {"displayName": "9D9c1OSZzPWNSc9W", "namespace": "ne3iXXhwbZp9GReO", "userId": "Dme7FT4SxJBjl7jk"}], "permissions": [{"action": 11, "resource": "kLKmC81e4cmB394T", "schedAction": 58, "schedCron": "ZY8rx2P8nutwCfsh", "schedRange": ["oexxKpFESUHrUJUA", "SAkk9cyLOWIPcgVm", "b2f56jYghkyZB8V3"]}, {"action": 51, "resource": "p46uc1z4gE05WJ5D", "schedAction": 21, "schedCron": "yLTkleJlfNF3HhkK", "schedRange": ["0qVuWaw01kf6NOvz", "yynmPuzTiADNrgHC", "QREhL5xDJLZ2IclT"]}, {"action": 19, "resource": "2c3RPhtAzD2I2jmO", "schedAction": 32, "schedCron": "qsUONhJJUVg6d4ZM", "schedRange": ["HpDw2etRFByCZaqF", "bKggtjXWjJx9McwX", "17kvTaxoY0f5fJwB"]}], "roleName": "0t0cgHLYOwgwX9Mh"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
