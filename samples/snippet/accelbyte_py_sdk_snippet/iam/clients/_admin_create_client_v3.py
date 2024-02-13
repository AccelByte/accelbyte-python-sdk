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
two_factor_enabled: bool

Example: '{"audiences": ["5vCtA0DPzu5JNOHQ", "IIZWUky1gTJWuMD2", "qRH7xeNC7Ic8w4H2"], "baseUri": "WWob9kZ9oRzap6j2", "clientId": "fFLrLqDYTqlJyrIw", "clientName": "PRLY3ev6O3Qz0VQp", "clientPermissions": [{"action": 75, "resource": "IrkbS9whzuvzEOIQ", "schedAction": 66, "schedCron": "HIaNJoPUORFQuVwH", "schedRange": ["YwzlfhQcOz0HgwOO", "aylzmBXpIpf6295x", "MieazKUHMQYS6xbE"]}, {"action": 63, "resource": "LfmgUmZwOd7qRpQN", "schedAction": 89, "schedCron": "IJE0yL7EuxIk0Suz", "schedRange": ["PKk7kR0O8ijq15TW", "OsmOLFPuUc5ArU6G", "4BnOGzwEig61xIll"]}, {"action": 22, "resource": "0Ru4bMo5IDbqfINS", "schedAction": 27, "schedCron": "WdSozrQ4wl2NeLQm", "schedRange": ["7Iu9mhP3iF06iiWM", "bnHmk8sBhKuUNc5O", "PJ9vEsikqSHR5xFk"]}], "clientPlatform": "emj8AdC8UVt4dBXf", "deletable": true, "description": "4qCsp81ncHUECIpJ", "namespace": "TfZcz5EObQdiPs0H", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "FGVfXakCyHwixtVw", "oauthClientType": "EAkdqHkpiWyMK7tl", "oauthRefreshTokenExpiration": 6, "oauthRefreshTokenExpirationTimeUnit": "1A5haYKuRaa3eTbY", "parentNamespace": "JX9eHrp2DbiVjX2J", "redirectUri": "wIXYpWIQC70rjsVs", "scopes": ["5T3Okf4yLM3qTHIy", "VyYYZGO73VfF1bTS", "wArI0Zr21Hzz5g9i"], "secret": "dJK0oIDv4C1faPBX", "twoFactorEnabled": false}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
