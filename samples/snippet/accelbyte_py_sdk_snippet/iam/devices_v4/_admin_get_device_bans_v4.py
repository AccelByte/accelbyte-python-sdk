import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_device_bans_v4
from accelbyte_py_sdk.api.iam.models import ModelDeviceBansResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_device_bans_v4(
    device_id=device_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
