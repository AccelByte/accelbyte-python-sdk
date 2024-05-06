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

Example: '{"audiences": ["DBfSxfADEXG38RjE", "iYmr6u3vKdQ70I1o", "UVafoRmLRIe7rGPc"], "baseUri": "lZGSzngpOGDVWMYg", "clientId": "f1ECN58VmW5IZ9a1", "clientName": "wfwZMrcBX6XnLZCV", "clientPermissions": [{"action": 57, "resource": "BzyJmmjKCKcYQgDb", "schedAction": 0, "schedCron": "8Oxxc34pGtlja8KA", "schedRange": ["Kt7zJbindqCJ9Pgn", "bYr8IjuTyoBUCStS", "RA9bBtBBIN59Qgx0"]}, {"action": 57, "resource": "ScVziBaH7JZ8aKF8", "schedAction": 37, "schedCron": "fkiNfbeD7TO2t582", "schedRange": ["35mxeqDBSvW7rAfO", "RXxaFWAvdBw2n1k3", "FlnM26ybLbRd24cg"]}, {"action": 98, "resource": "FeW31LvSOGn9cvHL", "schedAction": 84, "schedCron": "MX4LDNN2oszYK1gE", "schedRange": ["y95RDDpBs3Z0S6iA", "8QdI7LKFZxLTQsfV", "3LRWiMxStcGZNjOq"]}], "clientPlatform": "IMain3dZM8ILIpCO", "deletable": true, "description": "Gi9cyPL13M3IodWD", "modulePermissions": [{"moduleId": "ta04PYlPZNfWhmqq", "selectedGroups": [{"groupId": "qVhL6Wjg4yZcpEYx", "selectedActions": [2, 18, 27]}, {"groupId": "VWgHUFj1b7qtOyPS", "selectedActions": [47, 39, 93]}, {"groupId": "Gy0YIzVRBX7Shr63", "selectedActions": [89, 98, 40]}]}, {"moduleId": "RtqGVW3PBRP5d2tK", "selectedGroups": [{"groupId": "zHdJQMFnjmSWeQ5i", "selectedActions": [61, 2, 44]}, {"groupId": "VHHLfEBH9eToCTCt", "selectedActions": [1, 51, 1]}, {"groupId": "mukZ2DUb4jida0T5", "selectedActions": [100, 85, 69]}]}, {"moduleId": "rrGI27tj4GIBuBKp", "selectedGroups": [{"groupId": "dKXOZoRBgVA43K9r", "selectedActions": [70, 95, 8]}, {"groupId": "dpOUoMoyaa4NNrEx", "selectedActions": [55, 33, 74]}, {"groupId": "LhkYnsuriyNRt0Ec", "selectedActions": [88, 5, 68]}]}], "namespace": "fEkCocppsZB5Gq8u", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "yTt0rP5T57S1pWXR", "oauthClientType": "esvqW6YKO7X9ZFpn", "oauthRefreshTokenExpiration": 95, "oauthRefreshTokenExpirationTimeUnit": "pAl0NLsif9ZXmYFQ", "parentNamespace": "pMpZhYwkKzCKPU90", "redirectUri": "3TMtBqbYiizNqu4Q", "scopes": ["A9uZ5J4EhjN4lHr1", "IvQOmZCekFLV6EGt", "5v8YJnB7IihMSqkW"], "secret": "I4HdAS8ne0gUZSWM", "skipLoginQueue": true, "twoFactorEnabled": true}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
