import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_device_ban_v4
from accelbyte_py_sdk.api.iam.models import ModelDeviceBanResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_device_ban_v4(
    ban_id=ban_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
