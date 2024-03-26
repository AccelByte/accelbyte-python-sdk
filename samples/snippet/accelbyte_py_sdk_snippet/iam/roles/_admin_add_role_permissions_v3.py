import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v3
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

Example: '{"permissions": [{"action": 40, "resource": "z7yAzHmh7HB0kjJ6", "schedAction": 26, "schedCron": "5nID9oswxc3mWy7A", "schedRange": ["pzlbuKrqEbaRNInC", "lBwvZywQ9Z8LnjwM", "gaNkph7KnxBtoAj9"]}, {"action": 22, "resource": "6Ua2QtiWB8WJlDXy", "schedAction": 78, "schedCron": "8Buxp2MpxzgxxTYr", "schedRange": ["nExyJLALeML5YmE3", "tRRHIPwblY1AiqvO", "GefA85yy1UQbbZz3"]}, {"action": 47, "resource": "1gYJQ068RxTaJd3z", "schedAction": 60, "schedCron": "Ys9DmqPPnKVlXWm5", "schedRange": ["8G8iFpxaEf5h51rV", "Gh98TfJSNxIOeEHC", "GfcSgkngxFbsn7vx"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
