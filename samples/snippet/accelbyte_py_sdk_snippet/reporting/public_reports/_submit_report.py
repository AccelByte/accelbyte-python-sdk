import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import submit_report
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

Example: '{"additionalInfo": {"eg3QoyroX7QzL8mX": {}, "iBLZN57ypHINWjEc": {}, "ljWg8eSFtGyPpI3y": {}}, "category": "USER", "comment": "Ym0XP0VkWkr3OUff", "extensionCategory": "NLxT5lXI0BVF0BQZ", "objectId": "SNNLkvHSG6G5lnZ4", "objectType": "9NpDUJIBp6ofWnlY", "reason": "0uBNzVT7fbgOIsnO", "userId": "iE3EEMlcA4OWBIXf"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
