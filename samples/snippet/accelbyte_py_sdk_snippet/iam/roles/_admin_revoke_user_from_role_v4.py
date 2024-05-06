import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_revoke_user_from_role_v4
from accelbyte_py_sdk.api.iam.models import ModelRevokeUserV4Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRevokeUserV4Request
namespace: str
user_id: str

Example: '{"namespace": "B73dZCIJrKQAWYdD", "userId": "ZIxFbNoDQQ5UhDdh"}'
"""

result, error = admin_revoke_user_from_role_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
