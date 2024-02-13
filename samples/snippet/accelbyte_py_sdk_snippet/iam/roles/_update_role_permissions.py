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

Example: '{"Permissions": [{"Action": 93, "Resource": "82yEACY0jttKZnNm", "SchedAction": 4, "SchedCron": "GawEgCzXd2GUpgeT", "SchedRange": ["LoCP6aM3MMHehS4W", "U6cAWctMVzBdFqmP", "OP5AKiXSvlddXTCu"]}, {"Action": 61, "Resource": "wQMkI7AehkN3nF7A", "SchedAction": 95, "SchedCron": "pgiminYJchUcDUcV", "SchedRange": ["86gbJlbUaPZYK7lK", "dS21D6r6Gp6vqXfK", "nkITClWI7QBQvRMO"]}, {"Action": 29, "Resource": "2mNUm3s5MF5WSgIw", "SchedAction": 86, "SchedCron": "i4FGS3PnCslLMrPJ", "SchedRange": ["Tyj8QcYlcNI4PoQg", "PtC0tF40xuCnyvlh", "ODi3hd2VRULpnEIb"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
