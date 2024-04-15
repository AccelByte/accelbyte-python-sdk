import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_managers_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequestV3
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"managers": [{"displayName": "PowX8ccOsgdSndHX", "namespace": "KGxikhAgmnqfydJt", "userId": "cgCAjpiXR18nXV1M"}, {"displayName": "V9Wzby3VXAlVZjjx", "namespace": "sbldXUFydHaINCmO", "userId": "tkobjUVNneyI0StU"}, {"displayName": "25NSv2XOpKC7GrhF", "namespace": "mhhj2dLr5toGds81", "userId": "Xdwzmty2P6UoFo5p"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
