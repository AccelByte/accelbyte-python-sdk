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

Example: '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "XSpuxdNATXDfTCvq", "namespace": "aBHDCVrw6TVng0eX", "userId": "LSM55to9m1R5SBzI"}, {"displayName": "iJZ6uoPKkfx5tFce", "namespace": "17UPWQAmPu5Pl9qk", "userId": "B8M1YYeKuECMEnKC"}, {"displayName": "oe3gHzSDc0DZOVpQ", "namespace": "BOhdYKTwHAQ8BgtA", "userId": "UMba579jJ2rbw45B"}], "members": [{"displayName": "ZolnyftBEDnhx0uw", "namespace": "o6G3laMyzE1Z24Da", "userId": "Tua6OQZoqIPa8GEj"}, {"displayName": "SPvunRMYZkQuWqFG", "namespace": "AZDlqbRfmJZAmKsv", "userId": "x8uYqR9NyB1oKfHD"}, {"displayName": "0had55tkZLDdxrU3", "namespace": "NCYEse7p0qQl4HZG", "userId": "CTq0QMmFd05DZd5O"}], "permissions": [{"action": 65, "resource": "Z61Bi9LIwYCofN4m", "schedAction": 56, "schedCron": "9hNJg9NCTmrn8IAZ", "schedRange": ["rYT7H5vliT673JMn", "vVjeT0cLwQGoN8Tv", "UFUYGSh9y88qzhD4"]}, {"action": 87, "resource": "zZYGNs9VVETmPvCp", "schedAction": 70, "schedCron": "UFB8karm3HY5pvxQ", "schedRange": ["hOvtEtRYKcimvDsI", "X0flWe0vLnjkHSUg", "UR39rfRXzjO5R1nB"]}, {"action": 3, "resource": "mXMML9IcLrFeNSJU", "schedAction": 22, "schedCron": "7ZHh42Om54t9N1k0", "schedRange": ["dXpHUYP6TFE5fapL", "SSmwL9Casy4waM2s", "0tbIe50fMeRLzF7X"]}], "roleName": "jR9M4Squ27raISvJ"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
