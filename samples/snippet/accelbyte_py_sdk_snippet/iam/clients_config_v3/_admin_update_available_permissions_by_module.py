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

Example: '{"modules": [{"docLink": "7hm9wN06JCFaYy1B", "groups": [{"group": "lVr1L4o2Xvq2jkIv", "groupId": "BPGH4yuYp5XaCzL3", "permissions": [{"allowedActions": [9, 0, 35], "resource": "LyRFcBfBPZFowETB"}, {"allowedActions": [90, 52, 74], "resource": "kdHkMdFLIqzaHCMm"}, {"allowedActions": [59, 74, 61], "resource": "KJcpNXBLCJku97Q2"}]}, {"group": "pCfJLs4XsRG2PawE", "groupId": "xoAS3A9OWVcZasnM", "permissions": [{"allowedActions": [15, 34, 38], "resource": "yzg0DnEV7jo19ymd"}, {"allowedActions": [67, 71, 20], "resource": "40PSH0yBnmsy0AsW"}, {"allowedActions": [63, 17, 90], "resource": "IyJkKzvEe17PhZGw"}]}, {"group": "FOqVlOdx4L5VM88m", "groupId": "Ouvxyq9lJ5kDNjD7", "permissions": [{"allowedActions": [84, 67, 57], "resource": "v0657l3KCxdIlE6q"}, {"allowedActions": [57, 44, 99], "resource": "VPv1hb4g6V3G6xsS"}, {"allowedActions": [68, 39, 3], "resource": "nsqK6dd9BtcWMHOY"}]}], "module": "qlapwDc2CLTGxHmk", "moduleId": "TrT3t3NMeRBLWPN5"}, {"docLink": "ARwwO1Z4yxGlq7bC", "groups": [{"group": "D6URf6E8dJurajD7", "groupId": "EBq8hqMTNVFJhK84", "permissions": [{"allowedActions": [95, 54, 36], "resource": "xEJYEo9ehhem64fh"}, {"allowedActions": [47, 56, 95], "resource": "wKDvCn7DwFqAeJbO"}, {"allowedActions": [22, 54, 45], "resource": "CNEukZ5yeHrvC52N"}]}, {"group": "XIOVoSkUknoii0EN", "groupId": "x13gyMXGcB9LFlOA", "permissions": [{"allowedActions": [46, 100, 37], "resource": "JHvFpNehiCKhTamo"}, {"allowedActions": [31, 45, 9], "resource": "P0Q82Nb42eKuA6ky"}, {"allowedActions": [87, 33, 85], "resource": "7FPJWNOWphY01hLG"}]}, {"group": "8NkEWDF5MEzcpnJE", "groupId": "nujpqNt7rPBgtv6Y", "permissions": [{"allowedActions": [97, 76, 69], "resource": "TkZxXvwYh25wQOND"}, {"allowedActions": [11, 51, 8], "resource": "l813mk03LjLcpO0u"}, {"allowedActions": [99, 58, 19], "resource": "SC4rML0peayptu3N"}]}], "module": "L4Hbb7Btspk2slcj", "moduleId": "Tm6cGxAx3vg1qnfI"}, {"docLink": "jIrKuyV6cRwtl3BM", "groups": [{"group": "JN6Ad6HrbkUdzTyQ", "groupId": "3lKfpUccl10uKQiI", "permissions": [{"allowedActions": [97, 2, 37], "resource": "E35UgeLnOIF2WuQ2"}, {"allowedActions": [31, 67, 59], "resource": "S9n4CkgmvnO717JF"}, {"allowedActions": [13, 89, 18], "resource": "8uELrCPWDpwPSx5u"}]}, {"group": "kZGV1pYPPBHtXKNg", "groupId": "1AUz4ZwxoiGuXADI", "permissions": [{"allowedActions": [39, 13, 31], "resource": "rcF5zHlOt39J1uTk"}, {"allowedActions": [81, 63, 41], "resource": "8Hcc9uoLqBf82Cz1"}, {"allowedActions": [100, 100, 63], "resource": "VsQWsyuqvhdieSS9"}]}, {"group": "8zjCSmqyWntPur5I", "groupId": "9vNHsy8HyOeeOuF2", "permissions": [{"allowedActions": [52, 100, 32], "resource": "aPtNVzM9H107mcJK"}, {"allowedActions": [7, 100, 42], "resource": "k3V9bbIxsjp8PrWO"}, {"allowedActions": [39, 4, 13], "resource": "BlKXPhXQa7fHmHRO"}]}], "module": "EXandk2SaShPuZno", "moduleId": "6yUmiPHKyj98W9bm"}]}'
"""

result, error = admin_update_available_permissions_by_module(
    body=body,
    force_delete=force_delete,
    x_additional_headers=x_additional_headers,
)
