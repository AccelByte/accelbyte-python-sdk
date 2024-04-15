import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_assign_user_to_role_v4
from accelbyte_py_sdk.api.iam.models import ModelAssignUserV4Request
from accelbyte_py_sdk.api.iam.models import ModelAssignedUserV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAssignUserV4Request
assigned_namespaces: List[str]
namespace: str
user_id: str

Example: '{"assignedNamespaces": ["6b3EQ6ZEOgNaabQ5", "JeVEx0HwLNmTXwVJ", "nLyRNPAlokSuSVpp"], "namespace": "ABWs8uMqRSnKQC6L", "userId": "yNha0Ez02hfXjo1x"}'
"""

result, error = admin_assign_user_to_role_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
