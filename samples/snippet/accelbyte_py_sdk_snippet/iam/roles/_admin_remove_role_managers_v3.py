import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_remove_role_managers_v3
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

Example: '{"managers": [{"displayName": "oHQeB3oOE3xrkGgX", "namespace": "ryWuvdbjvdQR2p4c", "userId": "ebXtN96LkWKJHpxC"}, {"displayName": "AR3CHH51Ox1NjZ59", "namespace": "OuTAYXuMu1FrbULn", "userId": "2mVsgapZxerbE3GB"}, {"displayName": "BQl9YJIPwB4036zQ", "namespace": "nm8BcqTbE0yRbVau", "userId": "fGvpvP4DxVQOpFTL"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
