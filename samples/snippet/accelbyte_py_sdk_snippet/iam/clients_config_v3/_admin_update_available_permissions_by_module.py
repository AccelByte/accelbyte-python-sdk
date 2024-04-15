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

Example: '{"modules": [{"docLink": "MBD3faRCdj8XifPM", "groups": [{"group": "s6pt9pefvosNwzIK", "groupId": "KwkLBNmfFTNYwa9e", "permissions": [{"allowedActions": [31, 78, 63], "resource": "mN4Xr94ZfmKFkPVW"}, {"allowedActions": [19, 33, 95], "resource": "Df5vTuKX87mRbf5Z"}, {"allowedActions": [13, 84, 83], "resource": "aC0sK4Sr5bweuKLC"}]}, {"group": "RCprKX9ZCM8lAQ0z", "groupId": "m9UC7k3UbixRueXw", "permissions": [{"allowedActions": [33, 99, 91], "resource": "GnxipX74B1l7Xosx"}, {"allowedActions": [84, 55, 91], "resource": "t5Ldp2NoL1oaYFs9"}, {"allowedActions": [57, 84, 60], "resource": "6BTwk4qgfWBG6jT1"}]}, {"group": "O8KvCEXLkMXIySsW", "groupId": "YbG0Lz13ehg4O9Bd", "permissions": [{"allowedActions": [59, 41, 44], "resource": "MCT0FEjAN08TnNW4"}, {"allowedActions": [70, 94, 40], "resource": "XSyARATLDXLJTExJ"}, {"allowedActions": [82, 26, 98], "resource": "hNoNeKejrasFItp4"}]}], "module": "wjF4dbwh5PCTOvz0", "moduleId": "3GQbhQcjpNC0yQ8y"}, {"docLink": "UIQavAWTpedWb1Gh", "groups": [{"group": "dFiWi1DsKr73a3L5", "groupId": "U5N1o9hWhyeycPiG", "permissions": [{"allowedActions": [7, 51, 76], "resource": "6xWYXKO4c9mP5QcK"}, {"allowedActions": [88, 73, 71], "resource": "hx6cKFywvBaXxXxI"}, {"allowedActions": [76, 2, 72], "resource": "bLiHL7pt8zKsHxHw"}]}, {"group": "TrmPmPsKb6uAjsIc", "groupId": "zEgB9NyI5DSvhsFp", "permissions": [{"allowedActions": [36, 77, 12], "resource": "m3Ht5863JMjTRqnE"}, {"allowedActions": [90, 8, 60], "resource": "Vvj1A7kxwXSyF0ZN"}, {"allowedActions": [80, 21, 17], "resource": "ChFhxq3geoP7Eqox"}]}, {"group": "Djsf3SMIM5M7Cmh3", "groupId": "5gXbppfTN9jMsyWh", "permissions": [{"allowedActions": [43, 1, 55], "resource": "oYjMT5RIgqaCTUgn"}, {"allowedActions": [88, 17, 28], "resource": "zSDnb8pXb6nzX6dP"}, {"allowedActions": [33, 47, 38], "resource": "bLzvYy4J1Gn9FQDc"}]}], "module": "v3EmQoVFW5tZh21q", "moduleId": "GZXwTXQMilWyr1ft"}, {"docLink": "RMjPy4l4qL6gsg06", "groups": [{"group": "347uGiib1IVVK853", "groupId": "yaBmu2vyAcB6cJJV", "permissions": [{"allowedActions": [79, 9, 22], "resource": "Zk43uEQyzZyD98TL"}, {"allowedActions": [5, 57, 44], "resource": "zCaYA8KlMrqEhTAO"}, {"allowedActions": [12, 72, 29], "resource": "ZcCenu6MBOhjs87L"}]}, {"group": "EksFzWIMXRtlELoA", "groupId": "z1RNrSlUf0Is0wpk", "permissions": [{"allowedActions": [41, 83, 35], "resource": "u6VGW3hACeRpQSnH"}, {"allowedActions": [79, 34, 92], "resource": "Sy7qM4oT3GsCK1zj"}, {"allowedActions": [63, 82, 76], "resource": "F02y8g7zSZKpr7gn"}]}, {"group": "yyd22KAbBvPqrqkc", "groupId": "L3S4z3zCLGavELd7", "permissions": [{"allowedActions": [40, 56, 62], "resource": "ovUe4GnhMRUKZQrN"}, {"allowedActions": [50, 61, 81], "resource": "PuMiNJrTTUJ5MzS5"}, {"allowedActions": [6, 47, 86], "resource": "daNiH0upwHwCTfMv"}]}], "module": "u61Ib4KaNqK8eje1", "moduleId": "t3i8B5Q6Q6UYBDyy"}]}'
"""

result, error = admin_update_available_permissions_by_module(
    body=body,
    force_delete=force_delete,
    x_additional_headers=x_additional_headers,
)
