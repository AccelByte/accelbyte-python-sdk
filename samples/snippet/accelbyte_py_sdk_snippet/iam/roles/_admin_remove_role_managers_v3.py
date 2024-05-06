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

Example: '{"managers": [{"displayName": "kFUoHU87E5lO2QVj", "namespace": "LKKWNZwBfnMFPVNF", "userId": "oArBgdjAI6gbUh0n"}, {"displayName": "eM4u9q600CGK7Baw", "namespace": "7TABeNfoYanar5AA", "userId": "ttIe3jukZCUSSYnf"}, {"displayName": "jvslOXDtIiyTodrL", "namespace": "A4mmL9xopawpmtqW", "userId": "0npzqdhprv5jZS3G"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
