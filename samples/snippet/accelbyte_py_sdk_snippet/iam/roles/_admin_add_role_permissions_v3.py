import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
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

Example: '{"permissions": [{"action": 87, "resource": "edh8auDt4uWwnxuX", "schedAction": 59, "schedCron": "am8x6u0S7ShbJDF9", "schedRange": ["UeBdJpZTASZZr4Fb", "giUD4p8L1opaM80g", "SRbiryL5rr2MKa0N"]}, {"action": 3, "resource": "S3H6MFE3b85MnYJv", "schedAction": 37, "schedCron": "h5bxXcBVQDZOrEBo", "schedRange": ["LAm3JtbrUwqHrhm0", "AkRZ1yhNmZ83D1ea", "mPSX2DMfo5li26YQ"]}, {"action": 68, "resource": "gMTCsJLBmNQnpqzJ", "schedAction": 55, "schedCron": "SREINNDFcsESnHCe", "schedRange": ["XPR2xNQBBjzsG3ZA", "SoAcYBBtTOGIDgYm", "nyC4hDJZgZxuikNg"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
