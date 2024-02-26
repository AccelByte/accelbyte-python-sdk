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

Example: '{"modules": [{"docLink": "uMeE7MyM4gA55g7I", "groups": [{"group": "8qcjPZE307Gs1a4N", "groupId": "FzMs6rSWBOXShIGU", "permissions": [{"allowedActions": [23, 82, 77], "resource": "BOd9p0fpP6QFqdef"}, {"allowedActions": [28, 85, 55], "resource": "COx0Bpk47STeoi6l"}, {"allowedActions": [85, 8, 71], "resource": "2KTIeY4438qIdMmC"}]}, {"group": "5glPlonAo84pk90q", "groupId": "jTZ4L6LoD92N5spx", "permissions": [{"allowedActions": [63, 61, 18], "resource": "VTMXMjroJdWfWXAt"}, {"allowedActions": [48, 76, 4], "resource": "JxrVQTmtBEAnW2lk"}, {"allowedActions": [68, 53, 74], "resource": "hLp8fUrVZsQtprK3"}]}, {"group": "K7Hb4uL4KmGO5mI5", "groupId": "S5G1qzcEo6pz0Wot", "permissions": [{"allowedActions": [54, 7, 81], "resource": "iDbSnA7I8ceLAn2r"}, {"allowedActions": [76, 62, 50], "resource": "BNMDJRv1bSXjnwW5"}, {"allowedActions": [5, 89, 86], "resource": "5C5X7EPygiuUZYum"}]}], "module": "lbBpjsNcHwZp44mh", "moduleId": "aXEDcSq5nWCDFN3i"}, {"docLink": "A5CaG1QcXOITg4kd", "groups": [{"group": "I1HRk2bSpe2nk6zQ", "groupId": "UGB4mWE51WaBUqdz", "permissions": [{"allowedActions": [24, 3, 61], "resource": "yr6koNjrvtdDiIH5"}, {"allowedActions": [17, 9, 79], "resource": "GBQeXMwNG6SUaWLO"}, {"allowedActions": [31, 85, 53], "resource": "xIsjsKa6xafOv6en"}]}, {"group": "6AS3F4w2XmbeEtMQ", "groupId": "5no70VhR0CIGurJ6", "permissions": [{"allowedActions": [32, 91, 93], "resource": "7PRMO1caPN2sm20m"}, {"allowedActions": [55, 19, 0], "resource": "QczQHv9QjvmLCbVY"}, {"allowedActions": [67, 12, 38], "resource": "FrSkyel0r11lJy2a"}]}, {"group": "RBPxAuvXN1rwzlnE", "groupId": "Mhp3SAbtW2me6GZ1", "permissions": [{"allowedActions": [6, 86, 51], "resource": "CkRmP7keiWqM6o2M"}, {"allowedActions": [38, 44, 76], "resource": "Wc1zgm36OSphiHmt"}, {"allowedActions": [41, 93, 52], "resource": "a2lD0owpNAljB3Bc"}]}], "module": "v1XuWkNX5V3cP8Ly", "moduleId": "nZvEOCyGj4lVYKOG"}, {"docLink": "Jb3cyhaAk9hlOpeA", "groups": [{"group": "X9ztvcYRUHHoFx4i", "groupId": "e8r07gipo59XAzAV", "permissions": [{"allowedActions": [59, 95, 51], "resource": "8jrWiJODwZgRK2mS"}, {"allowedActions": [6, 40, 83], "resource": "1GPkOK35W3iqElgR"}, {"allowedActions": [24, 67, 99], "resource": "1bjC6z4krm8IFhSy"}]}, {"group": "nHoil6rBw1FO8rQW", "groupId": "1sP5yR0ub8D1yfMo", "permissions": [{"allowedActions": [29, 65, 46], "resource": "76n9DNDSCfmBDEkA"}, {"allowedActions": [15, 33, 8], "resource": "3SYTi0aH4OPwBw02"}, {"allowedActions": [27, 68, 75], "resource": "3Dg7IFDq3enl2fUE"}]}, {"group": "s2OO8iiYxu23iOov", "groupId": "7a8I0YVQMrjuEKmB", "permissions": [{"allowedActions": [85, 4, 59], "resource": "2IeJo6tdJDCRMg8y"}, {"allowedActions": [10, 99, 93], "resource": "HDXg6HfcHBCf5bp1"}, {"allowedActions": [79, 27, 99], "resource": "W35kUsElZ46SeHHR"}]}], "module": "AK0Ub2TnhvvRN03W", "moduleId": "sgcjdkyFMcmDgZjI"}]}'
"""

result, error = admin_update_available_permissions_by_module(
    body=body,
    x_additional_headers=x_additional_headers,
)
