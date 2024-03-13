import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_role_permission
from accelbyte_py_sdk.api.iam.models import ModelUpdatePermissionScheduleRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpdatePermissionScheduleRequest
sched_action: int
sched_cron: str
sched_range: List[str]

Example: '{"SchedAction": 91, "SchedCron": "gv1r64Qczt3jJ8rB", "SchedRange": ["KqW968kDP3IwuobR", "SL6Caud5Z3KUgFq2", "W0jfhCYr3GBltTsh"]}'
"""

result, error = add_role_permission(
    body=body,
    action=action,
    resource=resource,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
