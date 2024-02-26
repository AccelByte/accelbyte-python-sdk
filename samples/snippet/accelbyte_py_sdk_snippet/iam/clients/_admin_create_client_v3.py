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

Example: '{"audiences": ["ljy83kJbUIADsDIK", "Aivv42eK6yUecBmB", "ev24uGuxBdhCGItD"], "baseUri": "R5KnrtL8Y6mOzqAN", "clientId": "ONkxxJJvH9omL1MJ", "clientName": "yqqD96DNWZBj2IAy", "clientPermissions": [{"action": 98, "resource": "24NOy0qhGPkSoyaR", "schedAction": 91, "schedCron": "l4RapAX9LaTV6l47", "schedRange": ["lefzSWtrYXTFd01I", "oB5JYdwhSCQWYQoC", "s7fkCkVnPsOWJIjL"]}, {"action": 57, "resource": "HddWCG6KKp9UTePB", "schedAction": 45, "schedCron": "N3AYIQAHyLyDTkoa", "schedRange": ["gqyTPuor781DrXa2", "uvw7FpypwdeVVm7b", "kXMZIOC3UrWReriQ"]}, {"action": 17, "resource": "6qLUUZ7MuugupYuI", "schedAction": 16, "schedCron": "xmlIqJNyIhwqOhun", "schedRange": ["M5LKOtMuJpBW7sRY", "8GxFP4AJhznLg4WL", "HVpeJkWp1CgYXgQU"]}], "clientPlatform": "B3D6z3b3n5DIDW0n", "deletable": true, "description": "9dXbcilLWKt97x1k", "modulePermissions": [{"moduleId": "oux5LkVWn5KEnt6E", "selectedGroups": [{"groupId": "awF7A7FPxMBtEUuo", "selectedActions": [57, 86, 27]}, {"groupId": "mNCeTlf66W0a4p2X", "selectedActions": [34, 34, 37]}, {"groupId": "rh1xfZUmtXE0WZCQ", "selectedActions": [5, 82, 81]}]}, {"moduleId": "auYMpDbR0w0Pwd2P", "selectedGroups": [{"groupId": "7PMOmBhYWUmafAFX", "selectedActions": [66, 70, 11]}, {"groupId": "qvGWX5PRHWezdi4o", "selectedActions": [94, 9, 91]}, {"groupId": "GO7nCTYYVlm5rV0r", "selectedActions": [15, 18, 53]}]}, {"moduleId": "UJ5udz201XMVStC6", "selectedGroups": [{"groupId": "SmSIqRXRGSRnb0SC", "selectedActions": [95, 70, 64]}, {"groupId": "c1snCFkzEHESBTbm", "selectedActions": [80, 47, 80]}, {"groupId": "MxHTKHDzD43RUqDc", "selectedActions": [96, 90, 25]}]}], "namespace": "tZLM1XLHl2Zi5F0b", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "I9vZmP4GdGw9ovHa", "oauthClientType": "bzUE7kgFcJ14vKth", "oauthRefreshTokenExpiration": 33, "oauthRefreshTokenExpirationTimeUnit": "tLdVofPDpG7X6unq", "parentNamespace": "FNlrGAppKgOu9Ehy", "redirectUri": "X8UmhJPf3jkNb3Lz", "scopes": ["dDki7880taKbgJ1e", "A7Rr8O9ZjPtCjBDU", "t7mi67elzYCjU80M"], "secret": "bBY7ZywrGu2VX93d", "skipLoginQueue": true, "twoFactorEnabled": false}'
"""

result, error = admin_create_client_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
