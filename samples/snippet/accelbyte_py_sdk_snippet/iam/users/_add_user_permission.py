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

Example: '{"SchedAction": 53, "SchedCron": "8p5ZexvUY8Xmh211", "SchedRange": ["amjEO9JlzhE3LvHP", "viKB5gs6ztkb98vY", "hvlnHIA7zEogbHFi"]}'
"""

result, error = add_user_permission(
    body=body,
    action=action,
    resource=resource,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
