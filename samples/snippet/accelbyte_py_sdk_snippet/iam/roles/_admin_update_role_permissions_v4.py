import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
from accelbyte_py_sdk.api.iam.models import ModelRoleV4Response
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

Example: '{"permissions": [{"action": 28, "resource": "A7zTi6cQFF6GgmcF", "schedAction": 93, "schedCron": "JbNWbltcaIyumlV2", "schedRange": ["ofeqkt3oCW0Shwdg", "yf6vD1sewqxYZLL5", "tZmiceHfmIlPoHnX"]}, {"action": 72, "resource": "iSVtjaIz405J7PYO", "schedAction": 38, "schedCron": "OR2OwQdFVRUgNvvi", "schedRange": ["r4er6FncyvMcKZVB", "oPJ78xAH5cJT5AKK", "ob2ekRpMf5iHtuIG"]}, {"action": 99, "resource": "KMdugmn2gg6g3fQn", "schedAction": 1, "schedCron": "MNuH1fbbKqF7hYcA", "schedRange": ["IPCrYYulSvP1smhT", "2OJdQfS3kdIqHh9s", "syEfxD6n3KZ2mgbY"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
