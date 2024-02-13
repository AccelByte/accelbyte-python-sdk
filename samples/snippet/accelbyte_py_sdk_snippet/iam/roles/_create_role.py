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

Example: '{"AdminRole": false, "Managers": [{"DisplayName": "vEpvTLEWW8hTAofn", "Namespace": "U0CqNDGDNNza6EuR", "UserId": "cfJWemqojbGZH8Qf"}, {"DisplayName": "rajcl1dKPdBBq9Py", "Namespace": "Kf0MvdqhfduuwTRr", "UserId": "3IWW6AvPPQ1vUtiG"}, {"DisplayName": "1Y8weyKJLt4ftrrv", "Namespace": "VnVjCdGrHVZsH6wq", "UserId": "jutxTeWqHR8uWDxs"}], "Members": [{"DisplayName": "cMlZfbMIyTsJ9CSr", "Namespace": "waJojFgU7PcCyWqs", "UserId": "HaBgG5UBcY7sFV0D"}, {"DisplayName": "XZfVliHHKOqBufMG", "Namespace": "ZmHSLGTpBhEuH6q3", "UserId": "XKPABey8C4gSp5UX"}, {"DisplayName": "Ox8RrCheEy7UFBMq", "Namespace": "C02aE2uRRAD9wXxU", "UserId": "wM0aV4y8nuSgLcvY"}], "Permissions": [{"Action": 79, "Resource": "s787bhEC39bSzWEc", "SchedAction": 63, "SchedCron": "73YqGFSdwi7vf2VB", "SchedRange": ["W9KfkPJM8pQiTkWw", "T7pu8asfhrkdHskt", "qSCz9HucU379b0sm"]}, {"Action": 15, "Resource": "hlnj9IYaNlNGs5nz", "SchedAction": 72, "SchedCron": "FyUw8iYWr3h13m1w", "SchedRange": ["5rpwUQwNEOYUn6zo", "KML3jdHSfkItpTI2", "oVegIc1hxkON8kuJ"]}, {"Action": 82, "Resource": "eHhfN2Z33On6lQPH", "SchedAction": 20, "SchedCron": "Vbaii9bEz3W8x0yp", "SchedRange": ["CvdBjE3ARo5hDZge", "BpXSkbSUfpsKQntc", "pwbLizq22XrqXh5O"]}], "RoleName": "YXlbKOJqyjEdBYmG"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
