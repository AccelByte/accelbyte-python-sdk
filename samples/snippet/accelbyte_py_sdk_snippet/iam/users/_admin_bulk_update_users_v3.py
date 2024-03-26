import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_update_users_v3
from accelbyte_py_sdk.api.iam.models import ModelUsersUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUsersUpdateRequestV3
update_request: ModelUserBulkUpdateRequestV3
Definition: ModelUserBulkUpdateRequestV3
    skip_login_queue: bool
user_ids: List[str]

Example: '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["BQku9CCQAWfGpAVj", "90QReLdO13lFgVDv", "1UeNfjYR7IDaRXH0"]}'
"""

result, error = admin_bulk_update_users_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
