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

Example: '{"comment": "lx74gDM3W0b9KMWx", "deviceId": "Uyw2u1Qb5LePWV8o", "deviceType": "cXDCHjKa5id2aGx1", "enabled": false, "endDate": "4b5UMG7PdzpCYkiK", "ext": {"M7ba5ybk0AC9Xkro": {}, "AXzXWT3XeDryWbYz": {}, "reqF5JNS5ysYdyxh": {}}, "reason": "5WHCUdjVMLqMNgIv"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
