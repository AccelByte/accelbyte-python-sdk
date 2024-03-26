import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_update_clients_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientsUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientsUpdateRequestV3
client_ids: List[str]
client_update_request: ClientmodelClientUpdateV3Request
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

Example: '{"clientIds": ["IhzjELlzFypMCkd8", "9dlSLBnRPQKCV9ic", "4h8JMQKy6tWkzd1l"], "clientUpdateRequest": {"audiences": ["BVbDA9vMdEqGiNab", "CMe3ZpvHGzwWZuIu", "SABRC7x3H2pvl1lJ"], "baseUri": "joayjIiIR0Zehepg", "clientName": "r0275upfw47ssFYn", "clientPermissions": [{"action": 56, "resource": "J3mc72Eaa9akzY4J", "schedAction": 80, "schedCron": "r42NowOnhPjnyDm2", "schedRange": ["0YcoBtcNL9zLSo2i", "cNzZWdlg5Fxe6W1C", "aCMAeqa4Vp4vMeNi"]}, {"action": 5, "resource": "2UXBZtKfN2eTfnzi", "schedAction": 51, "schedCron": "Xj0vIpjGMttJax0v", "schedRange": ["qxSynnG9p8cTtY7C", "AIz8Hou6LhVgvas9", "rbrrZZ9Em6om9Rao"]}, {"action": 14, "resource": "LGWCkfalOVb0kc2F", "schedAction": 2, "schedCron": "BOuDte1Ntldcc579", "schedRange": ["MkLTCtY455cIejX5", "970QYLLQEREJSRiM", "3FvPtrVIflYBbGnZ"]}], "clientPlatform": "CzASbMPohtQtkrGH", "deletable": true, "description": "07uKiPfD7LWK1uid", "modulePermissions": [{"moduleId": "dj4AXYTlWK6wqs28", "selectedGroups": [{"groupId": "PVFMy8h2B9NzJuxh", "selectedActions": [76, 37, 77]}, {"groupId": "ydgXRE3LUewf5dvY", "selectedActions": [80, 51, 44]}, {"groupId": "TGzp4kpzy3ptLnE3", "selectedActions": [19, 59, 37]}]}, {"moduleId": "FavrkZJqIaZRQENe", "selectedGroups": [{"groupId": "RlQ99zw8iQLNITuk", "selectedActions": [26, 1, 73]}, {"groupId": "niNk9pDgEFFTejua", "selectedActions": [23, 38, 14]}, {"groupId": "4RQqbs6GwRxf8ZN8", "selectedActions": [92, 83, 60]}]}, {"moduleId": "AHO3gC00E9TAbl2Y", "selectedGroups": [{"groupId": "EircEBIavTOYw3gC", "selectedActions": [83, 19, 100]}, {"groupId": "RCNwB7jOtpWi0z0t", "selectedActions": [0, 86, 53]}, {"groupId": "um7MYavNkWh59e6l", "selectedActions": [84, 1, 99]}]}], "namespace": "97PiZ7Oh3ghdhChu", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "2nEKUzykg7GFqyoU", "oauthRefreshTokenExpiration": 74, "oauthRefreshTokenExpirationTimeUnit": "M2hF6ucFhJK0l7RJ", "redirectUri": "VOwGVciip10S7uRj", "scopes": ["mfVq2eC5JlEcpffQ", "F9WhniTrscrpFdcb", "nieSR96Rt0LWBUvz"], "skipLoginQueue": true, "twoFactorEnabled": true}}'
"""

result, error = admin_bulk_update_clients_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
