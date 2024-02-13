import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_deletion_status_v3
from accelbyte_py_sdk.api.iam.models import ModelUpdateUserDeletionStatusRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpdateUserDeletionStatusRequest
deletion_date: int
enabled: bool

Example: '{"deletionDate": 18, "enabled": false}'
"""

result, error = admin_update_user_deletion_status_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
