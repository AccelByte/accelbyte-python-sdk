import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_user_permission
from accelbyte_py_sdk.api.iam.models import ModelUpdatePermissionScheduleRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpdatePermissionScheduleRequest
sched_action: int
sched_cron: str
sched_range: List[str]

Example: '{"SchedAction": 14, "SchedCron": "l7Zjll7dz5XHna5F", "SchedRange": ["t7so0WdcSsPlHtoZ", "J5QItQXX3LaGaJ9O", "7tJby2xROEdH3EGU"]}'
"""

result, error = add_user_permission(
    body=body,
    action=action,
    resource=resource,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
