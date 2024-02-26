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

Example: '{"comment": "7cMywdRACvSwTkI0", "deviceId": "jVKTHCt2ILW4NKtv", "deviceType": "RxoSArA8cXYKbUVH", "enabled": false, "endDate": "flWtFWRSJMzHmVMN", "ext": {"q7LGSXX8Ds1EeiRR": {}, "Jfprcw4v7YYNdoMn": {}, "3LKWWMXnGROymgg0": {}}, "reason": "PLOYpMUK8tRNOAGQ"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
