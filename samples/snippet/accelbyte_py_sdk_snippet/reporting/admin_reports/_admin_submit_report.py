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

Example: '{"additionalInfo": {"IQxKht80WAZPFg76": {}, "T5k8WHYwFriGX3dd": {}, "eR7V6LzSh8wvjdc1": {}}, "category": "CHAT", "comment": "idKmq9ZVOqLujSbx", "extensionCategory": "N3JbgYHXOeFpAhz3", "objectId": "P8F9PsnpnOiB0U6o", "objectType": "ziTZAdtKYaVZ3yvp", "reason": "0eflY1Q5pPjWpc9n", "userId": "Da1AOpdhdCJp7JYr"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
