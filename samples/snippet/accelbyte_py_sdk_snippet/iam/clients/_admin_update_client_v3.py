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

Example: '{"audiences": ["s4Y3uWVOjbRclxvB", "z8l8lNixiXtQl8OQ", "uJwJblgxFx9xR7nl"], "baseUri": "boPM0mV56iG8ASdR", "clientName": "eqWpngmlnKCp1Lik", "clientPermissions": [{"action": 26, "resource": "wZFTfeAGrk32y771", "schedAction": 44, "schedCron": "nOIGYDujJGuAG7nw", "schedRange": ["sOsYPlZ57agPSeOh", "pQm3hezfhw2Ok3na", "mIC7sAkxCH2t88xG"]}, {"action": 70, "resource": "xKUmJVFS7MOkGERF", "schedAction": 75, "schedCron": "WgVqXyEqlbAH8tOu", "schedRange": ["ueoNqtmKeaYPRtEM", "4z2XdcvfYHksR667", "yjyWG7MRuMqYLL2E"]}, {"action": 12, "resource": "dmZDKQ4OCr9c6O65", "schedAction": 89, "schedCron": "htQSoIQRdihtGTV0", "schedRange": ["Os6Qdtxr5tZIZAUR", "4EUq4c9ioy0FPZ5f", "h9vYjxBG8lchUlub"]}], "clientPlatform": "K4M6BKIMt4Bzx5CP", "deletable": true, "description": "DTscaJKQhOw7FNhV", "modulePermissions": [{"moduleId": "1CVZ1LHUiqr67GlW", "selectedGroups": [{"groupId": "j6JWvhK2sj4xBhTw", "selectedActions": [10, 69, 81]}, {"groupId": "gMCsRB890NzoUPmU", "selectedActions": [30, 94, 84]}, {"groupId": "qpT4w8LivrVvuc3s", "selectedActions": [30, 99, 27]}]}, {"moduleId": "BowQPnV9kVLUdR6v", "selectedGroups": [{"groupId": "WPfJ8nZw8SQtJhc5", "selectedActions": [38, 73, 92]}, {"groupId": "U84jSyPOXH0G9Jon", "selectedActions": [96, 96, 17]}, {"groupId": "4oNI1BYeI377DNMf", "selectedActions": [66, 77, 31]}]}, {"moduleId": "H0cecMLw5K2uR89C", "selectedGroups": [{"groupId": "55pLHICsJfXWXoUH", "selectedActions": [9, 56, 52]}, {"groupId": "CALFgFFGDtVGI5mD", "selectedActions": [46, 9, 47]}, {"groupId": "CMRwdCD6bmmQDp83", "selectedActions": [96, 69, 56]}]}], "namespace": "A5ziilZ0HjvUQM5i", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "3BPZiUwyVVcaR6XG", "oauthRefreshTokenExpiration": 94, "oauthRefreshTokenExpirationTimeUnit": "H8OCvfreowZOKPcy", "redirectUri": "dWVkSJr9aItCp7RM", "scopes": ["AYPc06cnTeYZNMj3", "K9gMlPQiFRa0kfnd", "UCgWXByIhZ95vLa3"], "skipLoginQueue": true, "twoFactorEnabled": true}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
