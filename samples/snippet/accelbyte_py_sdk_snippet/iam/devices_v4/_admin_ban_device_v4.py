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

Example: '{"comment": "yGnVHofPnwfRuwKa", "deviceId": "Ucvwg0NcOVSkBDtL", "deviceType": "42B99w20LhXaqqDv", "enabled": false, "endDate": "GSk2thDLUoDL9jhM", "ext": {"lVXe4n8kdrWMCS7U": {}, "rGSb3bC0vR9zj9dL": {}, "4bnBNxkxCnHbmFe4": {}}, "reason": "n9RSfckaLsgyvATj"}'
"""

result, error = admin_ban_device_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
