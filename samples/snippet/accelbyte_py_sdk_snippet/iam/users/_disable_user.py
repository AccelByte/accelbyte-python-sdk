import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import disable_user
from accelbyte_py_sdk.api.iam.models import ModelDisableUserRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelDisableUserRequest
reason: str

Example: '{"Reason": "RBVr7Lfzti20KuyP"}'
"""

result, error = disable_user(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
