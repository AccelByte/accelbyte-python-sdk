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

Example: '{"permissions": [{"action": 90, "resource": "ULAHbPo8CYVuceLE", "schedAction": 57, "schedCron": "cfBHInGiOKfOgPbI", "schedRange": ["OBDa1vqKTQ6K2XIu", "eSAAVgD2m8fdmNmi", "aUBjnCvnqpRgLE0s"]}, {"action": 91, "resource": "UejRYqDqpFz8Num8", "schedAction": 4, "schedCron": "4TrH3CDSqYgV5gDh", "schedRange": ["ghW8e37FeVdH4987", "0tXQnIjFtsnPWGz1", "Yk3UiC30t5dNBy1Y"]}, {"action": 9, "resource": "gJyctBQHn0KhWWqK", "schedAction": 92, "schedCron": "NALuW2tnMaoje2Rw", "schedRange": ["iRmTzzWlIEveWx4o", "N4vvcgRscINQ9ThD", "ZXuOls9vLCa6aYdB"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
