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

Example: '{"modules": [{"docLink": "nrMxp4ew3620BPPf", "groups": [{"group": "B0ps3PKGKwqZJWcB", "groupId": "WvUbUfyuUJ34aac9", "permissions": [{"allowedActions": [20, 63, 22], "resource": "YT8hAuqL88EJD8n1"}, {"allowedActions": [71, 30, 99], "resource": "sUjWyWJ0SXk8wrMv"}, {"allowedActions": [72, 11, 3], "resource": "976X2AfoL4JXhw8t"}]}, {"group": "TLkETFOGK6pnHg9A", "groupId": "LED5fMSZ2VV6ARG5", "permissions": [{"allowedActions": [37, 0, 29], "resource": "INBVelzh5ml2GK7A"}, {"allowedActions": [79, 76, 6], "resource": "x2DqiGAVP5DpCNxu"}, {"allowedActions": [100, 82, 63], "resource": "DTYkAif6Kwra1czI"}]}, {"group": "1C7WWbpwtPWXK2dN", "groupId": "5QpP6fKRvCeABF3D", "permissions": [{"allowedActions": [51, 53, 56], "resource": "FCgvSjBNKCkn8hjw"}, {"allowedActions": [56, 72, 27], "resource": "VFeYrv32mXKFa3L3"}, {"allowedActions": [74, 0, 65], "resource": "E8WuONZ9catrDq9B"}]}], "module": "oGNEEReXwECZeW0x", "moduleId": "ems7QhldiyB9gkZO"}, {"docLink": "IwitfVbiQnrWc7tO", "groups": [{"group": "9bvfSbbqSTlBC792", "groupId": "urqbNBl3hEr2Lm5t", "permissions": [{"allowedActions": [73, 59, 36], "resource": "qIwcPBef3uUuap4f"}, {"allowedActions": [18, 58, 92], "resource": "6DoxIcHod8GspkBL"}, {"allowedActions": [88, 14, 49], "resource": "9FcPc8QmTkD1Ug8K"}]}, {"group": "B74YgN5aUpYQtX1i", "groupId": "gF2Ywxz8dMSI59R2", "permissions": [{"allowedActions": [2, 42, 84], "resource": "AnlxJzo7yC6hzrI5"}, {"allowedActions": [3, 15, 100], "resource": "1tHKGBu7SgkXmyha"}, {"allowedActions": [29, 83, 38], "resource": "WFtmsKL5Dp5Pk6r8"}]}, {"group": "LGanOmoQNfLESHtZ", "groupId": "fL2qNkZgRcQywCbX", "permissions": [{"allowedActions": [55, 36, 39], "resource": "KyUeYlDW7L1iEolA"}, {"allowedActions": [15, 15, 58], "resource": "pVOsCBCrnAI03vv0"}, {"allowedActions": [43, 80, 87], "resource": "GSapEEiiU1boRF8e"}]}], "module": "a1vnxTUBhitg2brV", "moduleId": "Ui60DHUgdOC4bkpI"}, {"docLink": "IeZsv7woHE7oYWPP", "groups": [{"group": "2vXnaEjoo73Awpeo", "groupId": "6HNMiOilGiw4SBBx", "permissions": [{"allowedActions": [44, 45, 43], "resource": "4nkOJkJqaFPKMCzJ"}, {"allowedActions": [31, 76, 35], "resource": "0TMV7IeiCPdymlWk"}, {"allowedActions": [2, 38, 44], "resource": "wrFRpsKSgHldTDPq"}]}, {"group": "bcafEiUNeaARMjoK", "groupId": "9cQ3e1KgPVNmWhEj", "permissions": [{"allowedActions": [47, 21, 50], "resource": "s8aKgtqoLNAK7KZG"}, {"allowedActions": [78, 58, 66], "resource": "tiWxQWLiITqRndmt"}, {"allowedActions": [41, 78, 25], "resource": "lMSMqNsl34tUSSUG"}]}, {"group": "smzs9km5bjuCBBh3", "groupId": "8BojkhjyFag1AxUW", "permissions": [{"allowedActions": [66, 23, 88], "resource": "JsWxhl7hk2Q0wfKB"}, {"allowedActions": [82, 61, 38], "resource": "65jOsGEJIYf7j7PA"}, {"allowedActions": [81, 34, 90], "resource": "PSyEWNQCrSEQgDv3"}]}], "module": "lo8I2fe8FEfFADOH", "moduleId": "YzV3ombmDeqjluuf"}]}'
"""

result, error = admin_update_available_permissions_by_module(
    body=body,
    force_delete=force_delete,
    x_additional_headers=x_additional_headers,
)
