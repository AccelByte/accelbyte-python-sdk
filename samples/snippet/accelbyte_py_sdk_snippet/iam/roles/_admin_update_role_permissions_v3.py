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

Example: '{"permissions": [{"action": 53, "resource": "m8Z3unJQfKC3wOlb", "schedAction": 42, "schedCron": "yLQRmWT0GySrfAtN", "schedRange": ["DzUku57aovflXugf", "b2DGCGXX4O4PYZs9", "NGsEq1fp1Wl1kKwn"]}, {"action": 67, "resource": "ToAQJe8vPF2ZhD3A", "schedAction": 90, "schedCron": "QIoxuIT3VQ4cscxK", "schedRange": ["bB4UZ7Ki7KLrDZNr", "UhveAlEl8RH71BWw", "wcJcDWos6KHC6Di8"]}, {"action": 31, "resource": "HQkLdm8yShAcB8El", "schedAction": 13, "schedCron": "DQAYgiZlVP80iJxh", "schedRange": ["Jk67WW9vXV1w1RB7", "Qd8nc8F18yYYvDQP", "kFBGn8yWBJ3d4scJ"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
