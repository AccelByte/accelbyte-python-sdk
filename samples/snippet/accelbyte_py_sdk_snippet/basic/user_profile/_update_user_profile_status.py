import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_user_profile_status
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo
from accelbyte_py_sdk.api.basic.models import UserProfileStatusUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileStatusUpdate
status: str

Example: '{"status": "ACTIVE"}'
"""

result, error = update_user_profile_status(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
