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

Example: '{"additionalInfo": {"HUOnhbvcekfj4xEV": {}, "W7rdWiRu6giCXoHd": {}, "qFzTUBzp2lYOhgKX": {}}, "category": "UGC", "comment": "Gavrzxop8BAmp3YO", "extensionCategory": "AQ17mJmkJLcSSShQ", "objectId": "vBGNel7XpwS6sFTe", "objectType": "SXaCPRxDTW4V9uBt", "reason": "2u53QJIHWfxUq19u", "userId": "KLNQ4KbTeCEcdXMi"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
