import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
from accelbyte_py_sdk.api.iam.models import ModelRoleV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissionsV3
permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"permissions": [{"action": 96, "resource": "YhOJyC2uckPS1Vbp", "schedAction": 31, "schedCron": "hHwETw89BMaIFN67", "schedRange": ["yRoaC5HGjnyafHll", "KfQx8hUNR9FXfaUe", "tsj5J38CELcKlVVJ"]}, {"action": 77, "resource": "sPKeIEQH0mqs1KUN", "schedAction": 92, "schedCron": "oeqRDnvgb7bgvmgS", "schedRange": ["nYrQMANmPJ8w0Lv1", "j30JFm84rlXIYC18", "pos1NNVRoULg5Qpj"]}, {"action": 46, "resource": "6iXCNBR2kwuWg8EA", "schedAction": 61, "schedCron": "dG6NU07jqisk4tCC", "schedRange": ["NdWBXbC4T2HCTgYH", "jKo7iMp3gfbgcU56", "dsGfaS8r5tYnOQ9W"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
