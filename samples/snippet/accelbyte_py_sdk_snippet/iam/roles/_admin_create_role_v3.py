import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_role_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonRoleV3
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateV3Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleCreateV3Request
admin_role: bool
deletable: bool
is_wildcard: bool
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str
members: List[AccountcommonRoleMemberV3]
Definition: List[AccountcommonRoleMemberV3]
    display_name: str
    namespace: str
    user_id: str
permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
role_name: str

Example: '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "z8TANVkscuTNHmDB", "namespace": "hkZdkQjrvrfEILLU", "userId": "fylYMH1KOqrY5nYM"}, {"displayName": "VUYbnPukzZSQ32GV", "namespace": "xkEASACJhzPnkFWD", "userId": "kCTImckWvUI5abgw"}, {"displayName": "UzG1actkff7q4c3C", "namespace": "95hBcan01sxmZVpu", "userId": "JvHd7ujAbqrB65nR"}], "members": [{"displayName": "8amk77ZoZOq9OxT6", "namespace": "UN9RGkBRXBd48R4e", "userId": "ZcsxgRwzttjiWJ2O"}, {"displayName": "ZVAgONUe9YUtU9Rs", "namespace": "hPS2NDFb9rsy6qzY", "userId": "rMJg3kHrIR2fhFb4"}, {"displayName": "fuc7cLt2u4KNYuFr", "namespace": "OONKc8CsYGHdY7qK", "userId": "OIKrghjfNLhmKDt9"}], "permissions": [{"action": 79, "resource": "hnlteCxHeM7obfev", "schedAction": 62, "schedCron": "hcFWVbcFLkYwqLuV", "schedRange": ["dxAVf2Dmj917u3A5", "IV9iuZavsiW0xTzj", "ZGTU423MXtN027v0"]}, {"action": 81, "resource": "jeQsArkSb2K3dfHx", "schedAction": 87, "schedCron": "4mqJcxU6z3sCYqkF", "schedRange": ["oQybIo6tCteu4nc2", "IXSsRXuBUzu6rrZH", "VZvqPeekVTPQlNBR"]}, {"action": 4, "resource": "djOgiNJcnKK1vWgW", "schedAction": 6, "schedCron": "nTrPPLBk5cpiAO9P", "schedRange": ["22AZdx4l1NzHtaEH", "h7IUx4OQRr7jFd4b", "snQQ91OYmdd5oW4s"]}], "roleName": "x3CQP64SkG5dOBST"}'
"""

result, error = admin_create_role_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)
