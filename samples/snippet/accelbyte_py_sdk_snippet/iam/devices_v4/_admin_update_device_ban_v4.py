import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_device_ban_v4
from accelbyte_py_sdk.api.iam.models import ModelDeviceBanUpdateRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelDeviceBanUpdateRequestV4
enabled: bool

Example: '{"enabled": false}'
"""

result, error = admin_update_device_ban_v4(
    body=body,
    ban_id=ban_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
