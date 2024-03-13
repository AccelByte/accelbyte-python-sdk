import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_disable_user_v2
from accelbyte_py_sdk.api.iam.models import ModelDisableUserRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelDisableUserRequest
reason: str

Example: '{"Reason": "nMFxVp0lxy4kMSqG"}'
"""

result, error = admin_disable_user_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
