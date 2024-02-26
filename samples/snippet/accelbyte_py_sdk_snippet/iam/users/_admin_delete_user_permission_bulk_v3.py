import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_permission_bulk_v3
from accelbyte_py_sdk.api.iam.models import ModelPermissionDeleteRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[ModelPermissionDeleteRequest]
action: int
resource: str

Example: '[{"Action": 14, "Resource": "r2tAcV1ncamop7IF"}, {"Action": 55, "Resource": "XtKCRLydkesH5A0W"}, {"Action": 13, "Resource": "GxluecjNuK1JiTVi"}]'
"""

result, error = admin_delete_user_permission_bulk_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
