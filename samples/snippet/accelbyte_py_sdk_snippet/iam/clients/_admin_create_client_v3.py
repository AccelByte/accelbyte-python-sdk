import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientCreationV3Request
from accelbyte_py_sdk.api.iam.models import ClientmodelClientV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientCreationV3Request
audiences: List[str]
base_uri: str
client_id: str
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
oauth_client_type: str
oauth_refresh_token_expiration: int
oauth_refresh_token_expiration_time_unit: str
parent_namespace: str
redirect_uri: str
scopes: List[str]
secret: str
skip_login_queue: bool
two_factor_enabled: bool

Example: '{"audiences": ["fIqzG4PKL0USQKl8", "1aVB9DFcOqnyJ6Dk", "k7nlYesnJabUvsUu"], "baseUri": "cLcuIiVrTJjczsoy", "clientId": "1mSG2c6BVcJCILBb", "clientName": "EuqxAG3B4ohQD7sq", "clientPermissions": [{"action": 56, "resource": "7zV0MBIBQQh7YUzr", "schedAction": 91, "schedCron": "OU72gGYU8o2qpCJW", "schedRange": ["sVSDdoGLLZOPsTOP", "X2olVy7N7ZJOONRI", "6lA6OmYb74PNYGdf"]}, {"action": 59, "resource": "3E2MaS5ULuClF6Cr", "schedAction": 78, "schedCron": "FDM9jnqnbs43zK4z", "schedRange": ["QJVkBl4BdfeNvETw", "jYuEfibVhmSjDHmP", "rCUmd1uZuRHax7Wz"]}, {"action": 44, "resource": "VbvOmdfvJjGhHG6S", "schedAction": 40, "schedCron": "xL4SZnQMunmkweF9", "schedRange": ["3eTOcg3gTFtQJGgZ", "o34I6Eht9LNv9Sno", "xanwaP1LmHRoDTJ8"]}], "clientPlatform": "hNc6A8BQscG2FeVB", "deletable": true, "description": "PJKEnXBnOo0Ys0p1", "modulePermissions": [{"moduleId": "5zyTQedx6xKciiXe", "selectedGroups": [{"groupId": "xWHkIooxTDKpn2cq", "selectedActions": [72, 15, 47]}, {"groupId": "n5HkM0XgE5YBUH6q", "selectedActions": [26, 54, 65]}, {"groupId": "7FswbX03tWbaVlcr", "selectedActions": [11, 19, 24]}]}, {"moduleId": "3undaW27Ec7L1qDV", "selectedGroups": [{"groupId": "r4LixRRyKjjmorHF", "selectedActions": [43, 34, 71]}, {"groupId": "fZlBFQYuki1YSDUY", "selectedActions": [16, 42, 42]}, {"groupId": "PSxqj3qg7ECg8JoE", "selectedActions": [84, 65, 57]}]}, {"moduleId": "MgHDQiaHeQZ4VoeN", "selectedGroups": [{"groupId": "Z0BjXYnJEoAVA0bs", "selectedActions": [50, 87, 93]}, {"groupId": "A08uyAPOB2mzmFEV", "selectedActions": [72, 12, 55]}, {"groupId": "aF67C6KGR5XrZpQw", "selectedActions": [91, 1, 54]}]}], "namespace": "VLO6FgiBso5bK0mF", "oauthAccessTokenExpiration": 65, "oauthAccessTokenExpirationTimeUnit": "t5pW5jYycLkDhmOu", "oauthClientType": "gllAxQT2blHxVM25", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "tujk2H64gTceu04i", "parentNamespace": "kav1dEACp92pl3jB", "redirectUri": "DosfHQjafQsMQFrP", "scopes": ["SK7jO75ZwEyBbnri", "LV2nJGjN1OGvUhz7", "k49yI3igIcI1e0Ud"], "secret": "HNtQICgDLmLQcez0", "skipLoginQueue": true, "twoFactorEnabled": false}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
