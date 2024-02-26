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

Example: '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "sMmzFDlSq1j1RCTS", "namespace": "Lo3dsHv8hs7wnJuV", "userId": "tZZrKHJ28v0anaYp"}, {"displayName": "1GHP6jfMPOZDhvbS", "namespace": "zRb47mDbISiCxXOa", "userId": "lHl3MDCMCq0IlrDt"}, {"displayName": "60XasHqU7kALylu2", "namespace": "lO3ePazgY13rQqF1", "userId": "sBI329ZcLguKAsic"}], "members": [{"displayName": "H0RojOnLNpRjw628", "namespace": "XivpAP7lhkt4MUlO", "userId": "p1dis4UwwAyX59Nq"}, {"displayName": "LPfbc8GqMVHEBzZ8", "namespace": "zPvQQ3wE2yCAfhCX", "userId": "f1AXDcHWBJFAcwkr"}, {"displayName": "rvu96ePEgYkgQmoZ", "namespace": "gekGofuCXLvzvFVM", "userId": "IZYIivdnvbnYTpTs"}], "permissions": [{"action": 97, "resource": "V6BIT3R67Gvx5EbD", "schedAction": 99, "schedCron": "tDbUZBJyr4JTIxSs", "schedRange": ["2NQIVuEDDBM7qOr7", "wP4l66OsSvbpxQ00", "MxuWMQf6Kqf9Xm2d"]}, {"action": 12, "resource": "zzWmM1vBmpzHZqki", "schedAction": 85, "schedCron": "sxa7RxwqPatm5iXN", "schedRange": ["aEPiNA2ia9j3mldr", "hu2VuGBwWrxHsyAr", "WwJiXKtMUAuYOGPY"]}, {"action": 90, "resource": "yQ5RN4HL4xixPbny", "schedAction": 64, "schedCron": "uUwYuSH5xxr9NAG2", "schedRange": ["T5keTmCJKnAaCK2w", "7sUzNIzYPpgXPJyi", "fYXeOyJftmp6zLzl"]}], "roleName": "9ZyvpYbF9TocxMME"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
