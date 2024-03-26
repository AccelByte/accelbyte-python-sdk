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

Example: '{"SchedAction": 8, "SchedCron": "H1Kv4qAaeZUsP4Xm", "SchedRange": ["sregl85opEiIrmTq", "eQTuQPkzSDzMuwFB", "u4PRSUJVg0zuk54D"]}'
"""

result, error = add_role_permission(
    body=body,
    action=action,
    resource=resource,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
