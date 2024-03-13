import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v4
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

Example: '{"permissions": [{"action": 19, "resource": "e5ilprFjtilSmpGp", "schedAction": 91, "schedCron": "vntJdowpHW6FQqQ0", "schedRange": ["CgmKYlpKO2eFxlVZ", "S4gkPz1pxQ6ytsUr", "axP2Sx9tpX5MV6iH"]}, {"action": 24, "resource": "UIlAvidUFMbvDE2O", "schedAction": 95, "schedCron": "J3MNERU7w87KJPOl", "schedRange": ["So0prtmLV4duOGb9", "u37cBk9ZmxD2SgOI", "sgrNaxbbEsdz4ftV"]}, {"action": 81, "resource": "XHOSybnGHMCime2B", "schedAction": 64, "schedCron": "UR3zlp0VIUuhxMrX", "schedRange": ["gLnE6ENISWYOVwWu", "X4E37OAwFPADNt9i", "7IU68pTMc454phhc"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
