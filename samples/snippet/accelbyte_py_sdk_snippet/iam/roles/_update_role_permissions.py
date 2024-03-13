import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_role_permissions
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissions
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissions
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"Permissions": [{"Action": 70, "Resource": "rfSFthfHn2Bd0tZr", "SchedAction": 66, "SchedCron": "ZJQHWMeXJqgI8ekM", "SchedRange": ["uPjZTPefC3gafySy", "Od3SiBciIpFydvv2", "0tE2G8OOsSZrECcc"]}, {"Action": 34, "Resource": "0MwQqBW4CtJ8RhtP", "SchedAction": 47, "SchedCron": "pOMG5jhvAdDJpx0K", "SchedRange": ["sjHpwiTBsRUidovA", "C1gbOK0W9nkwItLU", "CtLTmB2AucyIadfK"]}, {"Action": 33, "Resource": "Rr836gXoOUKRTqh9", "SchedAction": 0, "SchedCron": "mCrs1VShiubEYQVZ", "SchedRange": ["PU2yXreB2Zin7OHU", "Anfxca1fv5xhUxtL", "x1R20QGDaniEEWnv"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
