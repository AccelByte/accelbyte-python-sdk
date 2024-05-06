import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_submit_report
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiSubmitReportRequest
from accelbyte_py_sdk.api.reporting.models import RestapiSubmitReportResponse

"""
body:
Definition: RestapiSubmitReportRequest
additional_info: Dict[str, Any]
category: str
comment: str
extension_category: str
object_id: str
object_type: str
reason: str
user_id: str

Example: '{"additionalInfo": {"zSG9UjPxTqjFINDd": {}, "Ii2Hxe1RC6fxX4uC": {}, "6d936NGO6DOYKGbR": {}}, "category": "UGC", "comment": "1ixjtyWrrP41RWgj", "extensionCategory": "74woFImFMagm68S1", "objectId": "37qz9H5jd8uejrMx", "objectType": "7r0g69lvSfCMJhqK", "reason": "txIWYQjEaSaJLV6g", "userId": "8uZFzwbTzF9I82T0"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
