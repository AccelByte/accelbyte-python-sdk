import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_role
from accelbyte_py_sdk.api.iam.models import AccountcommonRole
from accelbyte_py_sdk.api.iam.models import ModelRoleCreateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleCreateRequest
admin_role: bool
managers: List[AccountcommonRoleManager]
Definition: List[AccountcommonRoleManager]
    display_name: str
    namespace: str
    user_id: str
members: List[AccountcommonRoleMember]
Definition: List[AccountcommonRoleMember]
    display_name: str
    namespace: str
    user_id: str
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]
role_name: str

Example: '{"AdminRole": false, "Managers": [{"DisplayName": "IdXUDZttCzFowRss", "Namespace": "iqI47dfMQQEjTNVV", "UserId": "oz9KaiXF21LlQnZ7"}, {"DisplayName": "clB5xm5aqSpngo2i", "Namespace": "YnOwPJ0U40r7j7nw", "UserId": "CZmASLxMkHaDoFsc"}, {"DisplayName": "l2T10b0LkrXveCKf", "Namespace": "u5xBQnXtQbsBFtCo", "UserId": "qjPVUZeWuSHf8yVn"}], "Members": [{"DisplayName": "7tx9Hvp9McrUGlVu", "Namespace": "lKAVt1hPe1wu24ly", "UserId": "uFy5sJWkbY6VRb5B"}, {"DisplayName": "W42GAOoWRfZkxZd6", "Namespace": "w9rbeMmBhqebe93s", "UserId": "nJqV2BpJ4n5zsHDy"}, {"DisplayName": "fAdwondxaQ3nyyGx", "Namespace": "y1AqtdS4V9RW33me", "UserId": "WQiuLMOXiGIbWsWJ"}], "Permissions": [{"Action": 72, "Resource": "TgSTUztmbWNTV86z", "SchedAction": 89, "SchedCron": "wIvBx9IRNBUwIfl5", "SchedRange": ["avbPWN0i3VsA6oZP", "SuKM3VkDXGYFlhVO", "QlhBHUWqFxDvV8en"]}, {"Action": 37, "Resource": "svAC3n5Yu7kdicGo", "SchedAction": 31, "SchedCron": "EqX2Z2fEWKZS0CuY", "SchedRange": ["nlfr9Rx8QJDhnryJ", "byRo4LIEw3qdeJOD", "2MLBfm2c9QYWZQZt"]}, {"Action": 67, "Resource": "10oeW36mEGhMLQpM", "SchedAction": 10, "SchedCron": "S53IFIKG5iYOzgrK", "SchedRange": ["scx1ZHo1NdJLtnE0", "KbPfE99cSLK3hbKb", "NsHHc2aNDKsoniAH"]}], "RoleName": "GNvq5OInubmz8Gyd"}'
"""

result, error = create_role(
    body=body,
    x_additional_headers=x_additional_headers,
)
