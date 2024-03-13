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

Example: '{"managers": [{"displayName": "04NfMDUBIIoekSLH", "namespace": "ZUtv7ri0p5cZ423F", "userId": "sBVGpGU3nXZoxZ3H"}, {"displayName": "fsRQEtf9I8VFU0TT", "namespace": "hXdeNuC8CDgsAnr7", "userId": "uI5lUifCUqmTCp4p"}, {"displayName": "YRT4MCJefJvhfcgP", "namespace": "qDz92MaN7eJlGMvW", "userId": "SsWsKi7IS4rtGG9n"}]}'
"""

result, error = admin_add_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
