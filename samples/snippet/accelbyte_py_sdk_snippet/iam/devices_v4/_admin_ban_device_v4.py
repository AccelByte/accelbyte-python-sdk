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

Example: '{"comment": "bADH5pdx2wbceWdu", "deviceId": "iT7kDTPFYKtVkfUB", "deviceType": "4qiRmvrRZ7fjwwhr", "enabled": true, "endDate": "IvmAF2fjm6huipdI", "ext": {"LlNw92XHjGRXuyNU": {}, "9Gyzj8cWg0CoyEE4": {}, "r0STJkj3fIt1FTGV": {}}, "reason": "IG2f3TxqkxiviyAA"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
