import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_permission_v3
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

Example: '{"Permissions": [{"Action": 89, "Resource": "iEILT6CrTEpOuRQv", "SchedAction": 34, "SchedCron": "JpnOqOfKZPQ5OQgL", "SchedRange": ["laIvEJCyF90GpPjf", "vxfYMMGLwlNFnAdR", "shj4fEd9Cf3zbLKP"]}, {"Action": 64, "Resource": "KlI5B2IMDY9HTsG0", "SchedAction": 85, "SchedCron": "J0CWxilwWrLiawDK", "SchedRange": ["T3mkD2zzXDYYLXId", "JpwaCxKKDlkgCA8Z", "z0BuaPSX4nEzKRJ7"]}, {"Action": 54, "Resource": "0CsMXxHAfcJ4SxkB", "SchedAction": 30, "SchedCron": "lDSugPkyg1h4SdPA", "SchedRange": ["0jrvSTpDeX0U6Tak", "tcpGMMjTpNZp5sPN", "spyCryOOVdcL7eWi"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
