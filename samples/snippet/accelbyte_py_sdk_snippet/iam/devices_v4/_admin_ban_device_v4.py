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

Example: '{"comment": "ZusgkPWYmMKt4sJM", "deviceId": "qxMqygIrzhxEGNLA", "deviceType": "3wNjD064NU5dHvyO", "enabled": false, "endDate": "azCFcodNWrx7jDay", "ext": {"0laNUkYqqxBqOjIu": {}, "qyR7g4wxN5TS81jE": {}, "n5R1jDeWuYOjKJRR": {}}, "reason": "ri0rTDN6V9IMBW6p"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
