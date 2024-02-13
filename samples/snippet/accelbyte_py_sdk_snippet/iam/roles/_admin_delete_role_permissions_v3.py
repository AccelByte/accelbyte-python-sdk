import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["KSmi473Xo9vaDR1j", "I3vFlTnDoLO2II7i", "XAu9YAjMuYgQqWaw"]'
"""

result, error = admin_delete_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
