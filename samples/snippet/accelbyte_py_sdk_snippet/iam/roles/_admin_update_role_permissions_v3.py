import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_permissions_v3
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

Example: '{"permissions": [{"action": 14, "resource": "J7tGUV8CoPfmSjUb", "schedAction": 30, "schedCron": "QhVWNN4nT16hN5F9", "schedRange": ["QdgzDyK8YJ4XQfFc", "Ut95qHPvPgL0UDl3", "BIITKSMWnadycq7I"]}, {"action": 56, "resource": "kYaNuCJb1avmcx6f", "schedAction": 98, "schedCron": "fdw6CGdpaBMVoYIa", "schedRange": ["RcMkJWZwnxZbs7Zr", "CEKisAvH8J0TWbjP", "gtIMkwBfa3vIVm5b"]}, {"action": 96, "resource": "qOMCAhUUWh7JlheB", "schedAction": 61, "schedCron": "C9ytkBf7Kwlv2JHP", "schedRange": ["6x36uuiMTahVgWJm", "EGuJVFIsnSGlAKeW", "CP9hCKTodBShj0tw"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
