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

Example: '{"audiences": ["dSzM0QBz6rf6MNX5", "eLh3yFEtmXlP5GCN", "D3dohmRseEVaShi5"], "baseUri": "iGp5rddOMPZTEblZ", "clientId": "rS2LNSWlnPfe4RTR", "clientName": "LlGh7uxGu7s9KMyb", "clientPermissions": [{"action": 59, "resource": "7rNlcng8LmwfIUZZ", "schedAction": 47, "schedCron": "1EIdd1q42YvzbaP4", "schedRange": ["Fqu4duxD93BXAzRn", "PUaK5kuT1D1eNahN", "p6anp07Pc43YaUKO"]}, {"action": 85, "resource": "zUZf97UoNhnVUNv1", "schedAction": 0, "schedCron": "XmNjLlB6YrjRCAX6", "schedRange": ["0YsHpkjvAQuTppzz", "dJRvp2P59IV8aTQY", "uwzAZaUKaZvl6UL0"]}, {"action": 65, "resource": "is5VWJ5rmeTurtqB", "schedAction": 77, "schedCron": "rmIvj52rMVndj2Di", "schedRange": ["x6EiIbitGhlQzXsw", "TL4M5B7xvv8TiiYg", "JWI1ZxdUSzCQW0Vz"]}], "clientPlatform": "lvzyrYawoOrQvQX4", "deletable": true, "description": "b0HRNPdVNjLT0Ane", "modulePermissions": [{"moduleId": "KvEHIMZWN4Yd91HU", "selectedGroups": [{"groupId": "4nolL3ijtUHlL6Cd", "selectedActions": [26, 79, 44]}, {"groupId": "ja3LZJBBIlZ2RfXB", "selectedActions": [3, 35, 77]}, {"groupId": "KRAvfQ90vDJk8MKV", "selectedActions": [28, 35, 31]}]}, {"moduleId": "vFbQUs0y8HotoYqY", "selectedGroups": [{"groupId": "UYaGgGj3P4s6CdGI", "selectedActions": [11, 77, 55]}, {"groupId": "1p121AARLqeAHR58", "selectedActions": [22, 72, 67]}, {"groupId": "1tQhHt4va2UW7emg", "selectedActions": [25, 7, 60]}]}, {"moduleId": "IcngFYNsEbl7lYlN", "selectedGroups": [{"groupId": "pZqWfJWC6TnvCbvR", "selectedActions": [22, 18, 72]}, {"groupId": "z6ARgG6PQKUZf9Bq", "selectedActions": [11, 94, 42]}, {"groupId": "8PcWxtuYdyrYVOku", "selectedActions": [26, 82, 48]}]}], "namespace": "KLCN6YemcmJ2IbYQ", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "vtGpQ8uYC2a66DeT", "oauthClientType": "ZQsX7uHzqbmZ9rHT", "oauthRefreshTokenExpiration": 80, "oauthRefreshTokenExpirationTimeUnit": "xJogt1EvDQQDdueb", "parentNamespace": "b0aWGGubkBLOYP9E", "redirectUri": "azk3iKIdCryCd1i8", "scopes": ["F1zkDQ4D8JXCmCWH", "2eTMbZSvIfSAprDk", "Aat2lgVHZN8aGIet"], "secret": "pOcFluDOErEPaCW1", "skipLoginQueue": true, "twoFactorEnabled": true}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
