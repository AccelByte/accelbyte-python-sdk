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

Example: '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "z9L2weV1UrOe85I9", "namespace": "oTh8MZv8tF0DQ7CW", "userId": "sGCzEdgH3vDiqcms"}, {"displayName": "RGHEQa8dkAI5E1fe", "namespace": "ngOnFOYSpHUBCcgi", "userId": "4XP4GbahGkyalE6d"}, {"displayName": "DQX46a7Ti4UC2BGw", "namespace": "isPlI8d6xz6gRdGZ", "userId": "g1ZRNA2NTWCRccuu"}], "members": [{"displayName": "6rADGkeLzMcdMhlP", "namespace": "TeZI15exA8WGP3kZ", "userId": "wnLlAUaR1gbmsVH5"}, {"displayName": "d47ojmdUwCS7gf7Q", "namespace": "CC0xg85m1KjNSrtm", "userId": "DCf0yLjImlaaLbYb"}, {"displayName": "X2YFls4600uFhvRk", "namespace": "G7ZaRQWzHeIb9fw1", "userId": "25Jgx2NzRVDk0F10"}], "permissions": [{"action": 45, "resource": "JALCm6VYCJBMcCEj", "schedAction": 29, "schedCron": "M4b096LfOSff7TQo", "schedRange": ["KfDSGUHiLse0hCpm", "kuSRwrEEvtR59EdW", "JQTUp1jkesKFV93D"]}, {"action": 77, "resource": "mNF3vf7MnDz6rSW0", "schedAction": 94, "schedCron": "hxVnqs2262RD7QSI", "schedRange": ["Y26cyd9WBQ3rfXK4", "PFt2qFyNckSHWk8m", "7RlUOJJW1Pjcx1Cr"]}, {"action": 40, "resource": "27SEEKaXxfWec0ra", "schedAction": 35, "schedCron": "8upwRF9Gyl6h95Y9", "schedRange": ["6v7Omxp1qoVlhxRL", "wuKe1PBy0s8IWbsp", "6OS9pD1DVXnsvMkc"]}], "roleName": "efc0TkADxccGLsYx"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
