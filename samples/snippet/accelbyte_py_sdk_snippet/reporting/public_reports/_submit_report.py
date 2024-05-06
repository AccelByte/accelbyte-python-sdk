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

Example: '{"additionalInfo": {"NK0Fzk20RjYJXglk": {}, "kmB74xsQ0bG2ssmB": {}, "Jl6nHYlCBnnBTdO5": {}}, "category": "CHAT", "comment": "CVVOdLRLiitz25CL", "extensionCategory": "KpIj0d2JBjdDK5Kg", "objectId": "i4OpIfPgpW4ICD7T", "objectType": "T8brbP0juyOURV1e", "reason": "q0pTJC3lDFYE9KsO", "userId": "K3n3uuWagqJMtcaT"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
