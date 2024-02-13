import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_platform_unlink_v3
from accelbyte_py_sdk.api.iam.models import ModelUnlinkUserPlatformRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUnlinkUserPlatformRequest
platform_namespace: str

Example: '{"platformNamespace": "pG61PbEGKWYtl1z4"}'
"""

result, error = admin_platform_unlink_v3(
    body=body,
    platform_id=platform_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
