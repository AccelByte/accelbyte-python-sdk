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

Example: '{"additionalInfo": {"TQbELfWk2HBprlvE": {}, "8C067ZjCdj6m2WSm": {}, "gxaZfvtYEDZwifwX": {}}, "category": "UGC", "comment": "T1QQnJoFMAA54wu7", "extensionCategory": "wf39GMXYXzMh4fer", "objectId": "VLdyJzzeOrHOnfH8", "objectType": "HxrGoVnD1iES4BU1", "reason": "fwZESczS8Xnavw1t", "userId": "ex1BCuZIAhRlcUAj"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
