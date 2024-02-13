import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_ban_device_v4
from accelbyte_py_sdk.api.iam.models import ModelDeviceBanRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelDeviceBanRequestV4
comment: str
device_id: str
device_type: str
enabled: bool
end_date: str
ext: Dict[str, Any]
reason: str

Example: '{"comment": "DNhKHxxsrBCzf3vo", "deviceId": "r59SbrJR9yQ4kRoV", "deviceType": "UHcVR0RLpuKUdOzy", "enabled": true, "endDate": "b6jN5P1tKON2cFi0", "ext": {"Rzo2jlVCRb0rXLMB": {}, "4QzbPomlJcODUFsr": {}, "YNZ9Ziu3OSZpSXDK": {}}, "reason": "RqzlIYRUzkwD8AnT"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
