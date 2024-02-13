import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_banned_devices_v4
from accelbyte_py_sdk.api.iam.models import ModelDeviceBannedResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_banned_devices_v4(
    device_type=device_type,
    end_date=end_date,
    limit=limit,
    offset=offset,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
