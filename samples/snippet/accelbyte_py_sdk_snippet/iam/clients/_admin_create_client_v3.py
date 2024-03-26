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

Example: '{"audiences": ["5sAYYHljFW930awo", "ILK0vJ8Zt97wh4Wn", "7UpYLFV5zKmqBBwU"], "baseUri": "HkPpvZl0hDjF6IGo", "clientId": "SG58fny5gIVGBGHd", "clientName": "aiQGgrAQ9ack8ccR", "clientPermissions": [{"action": 60, "resource": "VdMyw2ai5xx6Z4H5", "schedAction": 27, "schedCron": "cyDUqao0uUR1mK3t", "schedRange": ["RWGs14sR8gPxVMGd", "bw7wjgtdpXM4uVzr", "r6wET9GgHvORSVh2"]}, {"action": 10, "resource": "akhjSQtu4f9eimAI", "schedAction": 1, "schedCron": "uku8eR4PiRcCHw8n", "schedRange": ["EQSqhMHYitZjBsvv", "NSekpwZNVnop6SCZ", "BIwHJ6REGXT6yARD"]}, {"action": 88, "resource": "w6mIfgtHTRTLDoBv", "schedAction": 5, "schedCron": "a89b5ILItHZ1ETuu", "schedRange": ["sGBdt8V2DUvLDCx8", "T77Y4sKGE7H1n3Xi", "AlQxrBfyU4D1JjKe"]}], "clientPlatform": "n7i9LfPkTMHipASc", "deletable": true, "description": "03V7cgyEXQeHefDk", "modulePermissions": [{"moduleId": "eMYNwHWLJfQfM6fQ", "selectedGroups": [{"groupId": "73Cj9cXzH5wbDFLp", "selectedActions": [81, 27, 62]}, {"groupId": "sV3q6zDr1fH8PQyk", "selectedActions": [69, 78, 78]}, {"groupId": "7HbCPrJv2DthM00M", "selectedActions": [84, 24, 14]}]}, {"moduleId": "ELmCw2cuq2eh9Vqg", "selectedGroups": [{"groupId": "Y6FT7ZTXXxbBMnDd", "selectedActions": [1, 77, 56]}, {"groupId": "Gsus95XdyzVYlwcN", "selectedActions": [37, 80, 53]}, {"groupId": "9nGoCgag4DgXDp3k", "selectedActions": [74, 82, 40]}]}, {"moduleId": "kLX6smbXXBZWVv0M", "selectedGroups": [{"groupId": "5qpeN6hoR7tdma9W", "selectedActions": [91, 75, 96]}, {"groupId": "6rOGtWfSbInnoNyB", "selectedActions": [91, 66, 100]}, {"groupId": "gOi5quLQ5krtf2sr", "selectedActions": [100, 64, 76]}]}], "namespace": "LhbujdCgPOfIicIZ", "oauthAccessTokenExpiration": 78, "oauthAccessTokenExpirationTimeUnit": "Gz3aGe4nBsYWi8uo", "oauthClientType": "g3LGNm2mLzFMDf3n", "oauthRefreshTokenExpiration": 89, "oauthRefreshTokenExpirationTimeUnit": "FVZV31ZVwaUiUTLD", "parentNamespace": "PqcvRLpaKX25g3oo", "redirectUri": "alzv7IWtGNTlTRlx", "scopes": ["lwvjL9x0U1qoNxm8", "DzRiJ1Stq8dw10PC", "EtdVNwzEJ0Y4GTCK"], "secret": "pNkDCoidJtsFb9sr", "skipLoginQueue": false, "twoFactorEnabled": true}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
