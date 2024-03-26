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

Example: '{"AdminRole": true, "Managers": [{"DisplayName": "hTFaF8r4cuqtlSeC", "Namespace": "9SreGEzL6x9v2YOS", "UserId": "BJimbSStHiB27jjf"}, {"DisplayName": "6Y23lOcySz715oGo", "Namespace": "lobKVOZjfQe6OLTF", "UserId": "6p686N0lt256WLQ7"}, {"DisplayName": "uQAEF9nMdWSNfFJ0", "Namespace": "KXfKilrRPIIYeGKe", "UserId": "qBWvHNWsEBfdLO2K"}], "Members": [{"DisplayName": "VZJX9cMIlsj1jSLF", "Namespace": "Gkh5A4pKFxWopvyS", "UserId": "qXiMldCqRw7xB1tE"}, {"DisplayName": "rmL3KL8ALEDwJ02g", "Namespace": "M6MEobW5y6CzWfzR", "UserId": "LrosArrFW1Bk0L7m"}, {"DisplayName": "DFOrGskWrYuEZBbv", "Namespace": "ATesiV8AjLuBushF", "UserId": "SNwFCTGxgeykrlnx"}], "Permissions": [{"Action": 11, "Resource": "ch1LLJmcqL2JpE6Z", "SchedAction": 81, "SchedCron": "EmGy5VWleU2AVOHV", "SchedRange": ["u83QoPahq7gjzA9W", "hE3Tr6CxOklro9XT", "vDRz1f7WrYweQgEy"]}, {"Action": 6, "Resource": "fXi4NGA0zLcV7lJV", "SchedAction": 59, "SchedCron": "3O1o3w8rs6Iv944F", "SchedRange": ["PvuAFKNsOXwv4UY8", "T7FSbUoIBf0GKSXK", "WV5UCQwRjxggF5Yd"]}, {"Action": 0, "Resource": "1ITdkwTH8zFGWOM7", "SchedAction": 55, "SchedCron": "tuWRJoxhRUw7DymD", "SchedRange": ["OJ5kMfksOqPZHAh8", "Sw5cr29Gn7LhY97v", "pfMIoQv9tAQ3cnLf"]}], "RoleName": "W3ohyWgp43sw4C3z"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
