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

Example: '{"managers": [{"displayName": "lBF6ugoyu34qpP79", "namespace": "m7mGBseL4eeOKdpv", "userId": "elvwCcavAehebMgX"}, {"displayName": "TKsYUHnf19DcRj0q", "namespace": "L8dF2O0uXPyojKs0", "userId": "SL29719cn0IpNOlr"}, {"displayName": "eygRbkm3gm5p67R7", "namespace": "nYBqTMFM9P8kD5Cx", "userId": "0hQcD4tF9SrqFhUL"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
