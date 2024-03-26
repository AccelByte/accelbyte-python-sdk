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

Example: '{"SchedAction": 49, "SchedCron": "yFNgjcOa2V5Oxlsa", "SchedRange": ["JwSFSQcM1xyHW4Bc", "G4c7D45le0OAZt0f", "iOGsKqqJ1jz6yURc"]}'
"""

result, error = add_user_permission(
    body=body,
    action=action,
    resource=resource,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
