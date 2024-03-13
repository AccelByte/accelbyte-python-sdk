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

Example: '{"additionalInfo": {"QFvi0nlAJ2eZVToo": {}, "7ZDqoK2PdNwFtRDb": {}, "lCwTeZPsgxvz6EwJ": {}}, "category": "CHAT", "comment": "Z22ls9XKr9EQTzPi", "extensionCategory": "s4aqOYjR2ofznsdI", "objectId": "R0olcxYRqqjQp1lh", "objectType": "efcrRZrtL07fj8Th", "reason": "rImeB5Kpqm7f8o1W", "userId": "jOdCDka5sAxRK4Cs"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
