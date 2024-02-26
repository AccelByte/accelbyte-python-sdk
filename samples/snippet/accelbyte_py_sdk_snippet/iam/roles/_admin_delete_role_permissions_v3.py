import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["89PGI65v3hhMsW0w", "mgswdtMxDOrWpdT2", "EDKUrb1Bxgbwehu2"]'
"""

result, error = admin_delete_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
