import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_status_v3
from accelbyte_py_sdk.api.iam.models import ModelUpdateUserStatusRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpdateUserStatusRequest
enabled: bool
reason: str

Example: '{"enabled": true, "reason": "QzKFntA7AFJ4yvdW"}'
"""

result, error = admin_update_user_status_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
