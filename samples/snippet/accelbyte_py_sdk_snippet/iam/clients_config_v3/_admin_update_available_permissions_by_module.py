import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_available_permissions_by_module
from accelbyte_py_sdk.api.iam.models import ClientmodelListUpsertModulesRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelListUpsertModulesRequest
modules: List[ClientmodelPermissionSetUpsertRequest]
Definition: List[ClientmodelPermissionSetUpsertRequest]
    doc_link: str
    groups: List[AccountcommonPermissionGroup]
    Definition: List[AccountcommonPermissionGroup]
        group: str
        group_id: str
        permissions: List[AccountcommonAllowedPermission]
        Definition: List[AccountcommonAllowedPermission]
            allowed_actions: List[int]
            resource: str
    module: str
    module_id: str

Example: '{"modules": [{"docLink": "jIxGIXX7kRN3l4UZ", "groups": [{"group": "Ss8zKJf0FAY17R0u", "groupId": "DXP8n6guEgFBUgB3", "permissions": [{"allowedActions": [35, 44, 37], "resource": "bhGTHnbM8MtBw9JZ"}, {"allowedActions": [70, 31, 40], "resource": "BrfD6L8eimHd5n74"}, {"allowedActions": [100, 22, 42], "resource": "Tb49aFtLbRkvE7LW"}]}, {"group": "mmWyn5RsI3YYuiIp", "groupId": "yq4jajbM0mtMT4sQ", "permissions": [{"allowedActions": [57, 55, 18], "resource": "RTZKWbzqikolHrvB"}, {"allowedActions": [87, 68, 60], "resource": "AOQYMCzpbSNqJ1aa"}, {"allowedActions": [65, 78, 32], "resource": "smtnSKrdz9pTP7hA"}]}, {"group": "QSVx9uEHfSdccKtZ", "groupId": "Wgnj8lz5khbd7UTV", "permissions": [{"allowedActions": [83, 28, 43], "resource": "BcUGlrtIhpjSnewo"}, {"allowedActions": [63, 18, 61], "resource": "al6aRdRSonxtZb4k"}, {"allowedActions": [78, 43, 31], "resource": "2mb2MMMR8LYZoADE"}]}], "module": "85pjI9ONstSWmoGs", "moduleId": "qOb3K3Wqqh0eF2C7"}, {"docLink": "BZAGQClXCz84eu1F", "groups": [{"group": "ahifSHSl5cjZGkCS", "groupId": "aD5V8iy293uAogSk", "permissions": [{"allowedActions": [24, 42, 35], "resource": "XRKZmtHOVNofajXL"}, {"allowedActions": [77, 29, 4], "resource": "FpOTFWjrKZBVq5pI"}, {"allowedActions": [55, 36, 91], "resource": "q4vzqx0FGW8e1Ykp"}]}, {"group": "PK7oZDGgJjEva2CE", "groupId": "DxfZooaoj525dO0f", "permissions": [{"allowedActions": [91, 9, 69], "resource": "YSKigoy0YACSnFqh"}, {"allowedActions": [17, 51, 16], "resource": "EvYPRHUrEmojGCwh"}, {"allowedActions": [88, 35, 56], "resource": "KFfmneILdkKmk9S6"}]}, {"group": "tlhJw6wnnay668VZ", "groupId": "XuFIOhIjphjpUxox", "permissions": [{"allowedActions": [17, 75, 82], "resource": "khhjl486EHOUmgNB"}, {"allowedActions": [83, 46, 0], "resource": "Lbk4tPz1pETX6QZ2"}, {"allowedActions": [50, 37, 73], "resource": "41KwUULmTfMrdINc"}]}], "module": "EcPPbb1Z7Vp4A9Wx", "moduleId": "3DP56d8bD1WYimFb"}, {"docLink": "ezVFsc2fe30NFAJW", "groups": [{"group": "jZtRgaITZPGbm7S9", "groupId": "IwMLGXf9fSZBrC7n", "permissions": [{"allowedActions": [7, 80, 73], "resource": "cD49EiBaAOyTHRxX"}, {"allowedActions": [69, 19, 67], "resource": "WLtARBCmQNV3hA27"}, {"allowedActions": [2, 45, 93], "resource": "xeVrn8nzUYFbts3M"}]}, {"group": "FM4td17td0iq9Kst", "groupId": "FWk7Er71CaIFugly", "permissions": [{"allowedActions": [55, 55, 57], "resource": "ARjY3zzAJUgQWepN"}, {"allowedActions": [11, 79, 31], "resource": "MnOI4PMniyJ5WHyD"}, {"allowedActions": [74, 29, 39], "resource": "f7lNAEJpBdYxGEWf"}]}, {"group": "ygWF0OEnGwdwM6iN", "groupId": "kjNc7iOIOASPqVwm", "permissions": [{"allowedActions": [70, 94, 40], "resource": "Ya2qG4ByXpAXzQye"}, {"allowedActions": [18, 73, 60], "resource": "8IqsmAjxaAMhA6dK"}, {"allowedActions": [59, 57, 56], "resource": "fblrZwWewvHuwIiz"}]}], "module": "gLXLJGKaqfNTmpAA", "moduleId": "6V4Cgs5ywJr2cXHi"}]}'
"""

result, error = admin_update_available_permissions_by_module(
    body=body,
    x_additional_headers=x_additional_headers,
)
