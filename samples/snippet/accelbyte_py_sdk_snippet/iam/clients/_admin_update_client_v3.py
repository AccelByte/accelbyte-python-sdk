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

Example: '{"audiences": ["wPJnh48aYd4yURco", "OMYgs0aNEzivAwUd", "guWUrjW7g8WomNOn"], "baseUri": "5JFBsI5NRc4FDQ83", "clientName": "S14pwdahuDMjmyrC", "clientPermissions": [{"action": 63, "resource": "q98JlIFCiwlJ7IFj", "schedAction": 63, "schedCron": "mONRRBVnBjcHR2iD", "schedRange": ["FhJtlwR1prNSZx98", "iTwqjBBIBAwsIQeX", "GdvHImxYt0TR1POm"]}, {"action": 2, "resource": "gUkL5dnvWRPs3JxU", "schedAction": 54, "schedCron": "8CZAKJJ212EbIbfs", "schedRange": ["bpNejQcUqyBqvBgV", "0WZagK4S2IOTwf2H", "kxeQdmb4DDmj9Qch"]}, {"action": 28, "resource": "4uz1N0t63S8lZQ3a", "schedAction": 60, "schedCron": "15WpxlplM5D12sAm", "schedRange": ["Ku81r0tEW7693qDr", "oXq7fL3bhq0NT7Ai", "eFI9OV9l6wREL7H6"]}], "clientPlatform": "2ndZxZ5joJ8C5zTn", "deletable": true, "description": "pfXm6p6htRVZbRgU", "modulePermissions": [{"moduleId": "7Nx8YmR1Yb9U1bl1", "selectedGroups": [{"groupId": "kbGUHUkxMrLAAMiv", "selectedActions": [85, 10, 41]}, {"groupId": "ObJmCbJW3GJpi1Dc", "selectedActions": [67, 28, 60]}, {"groupId": "Im5crYRBCeH5Z00D", "selectedActions": [72, 18, 35]}]}, {"moduleId": "ykpcO1szu8GVnJbs", "selectedGroups": [{"groupId": "IdzcMEA0qLpJ4XKX", "selectedActions": [96, 11, 18]}, {"groupId": "3nYI79Hr3klddEBA", "selectedActions": [18, 90, 57]}, {"groupId": "vDeikb8EECg997n4", "selectedActions": [47, 68, 7]}]}, {"moduleId": "mHeeNthqeNo4vZCH", "selectedGroups": [{"groupId": "a3lzeS2wWtDimdIn", "selectedActions": [28, 55, 44]}, {"groupId": "NvPu6NrOghxHCiax", "selectedActions": [60, 8, 32]}, {"groupId": "4tfLYkssEReCzt1U", "selectedActions": [57, 67, 13]}]}], "namespace": "bdC9fzGb8WlTnKe2", "oauthAccessTokenExpiration": 19, "oauthAccessTokenExpirationTimeUnit": "efivAVTzfdI14Q31", "oauthRefreshTokenExpiration": 35, "oauthRefreshTokenExpirationTimeUnit": "yRGwJ6KHndmeft8y", "redirectUri": "2UEEVxLtqzAnGS6k", "scopes": ["IOtpPT6CcGWloG9E", "oEoJT7uZgk7kQOSX", "9bdfw7OwpYviBPsh"], "skipLoginQueue": false, "twoFactorEnabled": true}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
