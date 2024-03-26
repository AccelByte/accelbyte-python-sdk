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

Example: '{"additionalInfo": {"tOYyDE66aD6DBPlB": {}, "sigddNbpUOLAB7FO": {}, "ZggiT1gbXskAYRgj": {}}, "category": "USER", "comment": "lKrffutQdNTvML5g", "extensionCategory": "etSUCjtZB5bhbpgt", "objectId": "UUb0YsuTcvZOfBDE", "objectType": "TVWhwfSvwUursTr1", "reason": "AdV4gyOqMMtreA5h", "userId": "LFWkOVKzriBkq5Dz"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
