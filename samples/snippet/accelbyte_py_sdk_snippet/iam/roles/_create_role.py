import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_role
from accelbyte_py_sdk.api.iam.models import AccountcommonRole
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleCreateRequest
admin_role: bool
managers: List[AccountcommonRoleManager]
Definition: List[AccountcommonRoleManager]
    display_name: str
    namespace: str
    user_id: str
members: List[AccountcommonRoleMember]
Definition: List[AccountcommonRoleMember]
    display_name: str
    namespace: str
    user_id: str
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
role_name: str

Example: '{"AdminRole": false, "Managers": [{"DisplayName": "gREIVs2zk2jicj9Z", "Namespace": "zCKj1UnJCEc3L5m6", "UserId": "peKw42U83tcdIu3R"}, {"DisplayName": "D6YKxiTPSFMy6nQo", "Namespace": "Y6Tm3FpG74zvBmyU", "UserId": "nNboUBjUsAqOzu1g"}, {"DisplayName": "GJtFmDbKrdZDOzxl", "Namespace": "R0BLmD42qd7xTdbz", "UserId": "vtIJKiPkQh7Y66PT"}], "Members": [{"DisplayName": "VG0Y7IGp0VC7ZxfK", "Namespace": "GbTdJKE569jPt9ao", "UserId": "bTgZuCvlpC38pnvp"}, {"DisplayName": "4Bqh5kPNbH5Bg50L", "Namespace": "SjIlH5KbDvHmTzhK", "UserId": "ketJEZeSTWeoWacU"}, {"DisplayName": "HF7xi6Ae9gOaSvQb", "Namespace": "r0c5PSCicfHszKNd", "UserId": "KOBD1z1eiTFBbgpS"}], "Permissions": [{"Action": 75, "Resource": "UfjMsrs4vDCkyNIx", "SchedAction": 13, "SchedCron": "xr7Jx4ie3bwLK6u0", "SchedRange": ["6i9VZDq0uW7cIjLq", "908hCq0LFTQh9I3h", "TQU7nDtv8qkZYkru"]}, {"Action": 100, "Resource": "PvFEtMQFFTaqXXvC", "SchedAction": 43, "SchedCron": "H8ZAMkvnHYtSwPqs", "SchedRange": ["JVNBAL2YgXSrgFOH", "jpdGCrms2hXlaQLO", "3WuBRQH6X6ja5Vc8"]}, {"Action": 66, "Resource": "I0CUI9MDsVbj8EOK", "SchedAction": 24, "SchedCron": "9OrWao5gxxKgOgXz", "SchedRange": ["8Debx4QbqBmcjYd8", "YpXcoVYZqvvJhY8i", "e9QV34zYbTgXxkfg"]}], "RoleName": "WnTItFkUAzsshutt"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
