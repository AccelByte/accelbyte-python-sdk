import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateV3Request
from accelbyte_py_sdk.api.iam.models import ClientmodelClientV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientUpdateV3Request
audiences: List[str]
base_uri: str
client_name: str
client_permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
client_platform: str
deletable: bool
description: str
module_permissions: List[AccountcommonClientModulePermission]
Definition: List[AccountcommonClientModulePermission]
    module_id: str
    selected_groups: List[AccountcommonClientSelectedGroup]
    Definition: List[AccountcommonClientSelectedGroup]
        group_id: str
        selected_actions: List[int]
namespace: str
oauth_access_token_expiration: int
oauth_access_token_expiration_time_unit: str
oauth_refresh_token_expiration: int
oauth_refresh_token_expiration_time_unit: str
redirect_uri: str
scopes: List[str]
skip_login_queue: bool
two_factor_enabled: bool

Example: '{"audiences": ["zNxRoU681PDlUUHL", "dK6CtqykP99uiEVo", "Q6gR33chFLtDUXW5"], "baseUri": "nDAT4LoybV6wjIY1", "clientName": "NE6Pe29dFJKSziom", "clientPermissions": [{"action": 55, "resource": "47iQi3P9enXUoG3j", "schedAction": 5, "schedCron": "uuhlxiqiAyYBgVau", "schedRange": ["4eMps34o1FqaFRQM", "zJkGyOqcCrmitIZh", "u2wZNrDywHitLKoO"]}, {"action": 6, "resource": "8nD2iYfjU0SRt718", "schedAction": 53, "schedCron": "96f7Sx4daGhZYoD0", "schedRange": ["zv0XhKBOIuKwVtaU", "XLWXmMUpTwehnQEZ", "aS6cEmbG93dk0E2q"]}, {"action": 36, "resource": "mEg1IIC2WTsC7Llw", "schedAction": 99, "schedCron": "gIQpZlApq7UrY0Ll", "schedRange": ["P3tMhhmNJzPb34id", "OowrPLDvgwxEOxss", "z0dWrLhuGm6BwEwZ"]}], "clientPlatform": "rfFA4mDUGiLj2jKT", "deletable": true, "description": "J6oWbcyef5wCoTXf", "modulePermissions": [{"moduleId": "tYft1G1tNPUwZ7em", "selectedGroups": [{"groupId": "x5ZbCMKjTp7BfpAM", "selectedActions": [39, 69, 6]}, {"groupId": "hgq0E1tXBbBe1aMh", "selectedActions": [0, 26, 99]}, {"groupId": "Fiv2OIbMmqTWQCoD", "selectedActions": [31, 40, 28]}]}, {"moduleId": "p9siLBVZQ4prl4EW", "selectedGroups": [{"groupId": "hN2ZugPi2ciCmoc3", "selectedActions": [74, 47, 75]}, {"groupId": "eqoZcBcZSnmKnYXt", "selectedActions": [11, 37, 47]}, {"groupId": "7rLrhjoTzxs1nSay", "selectedActions": [93, 32, 53]}]}, {"moduleId": "Rgyq5cijtmUmjut7", "selectedGroups": [{"groupId": "9YdFLIg3xm3WM7ky", "selectedActions": [26, 81, 95]}, {"groupId": "ycCGj6y50mLuMOEf", "selectedActions": [100, 58, 45]}, {"groupId": "OrjjsTP4HsqM5LJj", "selectedActions": [47, 75, 50]}]}], "namespace": "Z3okzOzEmkVVSXDj", "oauthAccessTokenExpiration": 18, "oauthAccessTokenExpirationTimeUnit": "2Qa3OuXK3i8tXlcL", "oauthRefreshTokenExpiration": 34, "oauthRefreshTokenExpirationTimeUnit": "uhDF8XljoR1AnyiG", "redirectUri": "oFYY6AooPiNESiPT", "scopes": ["l26e7skI5ng9mSgx", "6JbuC7S1hfQbUoA5", "VCBrk07ICPiAXQ7D"], "skipLoginQueue": false, "twoFactorEnabled": false}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
