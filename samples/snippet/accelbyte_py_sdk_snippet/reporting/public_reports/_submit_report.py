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

Example: '{"additionalInfo": {"grwvLrXQqwhKMi8L": {}, "8WortzCUj5eeZFhD": {}, "4eYn8ywsa2yYNYEQ": {}}, "category": "UGC", "comment": "Di5gQ4LFcLz4IGXP", "extensionCategory": "lLqClWHk1ZQ9CJ1H", "objectId": "ZotrEURIW3kGqgLL", "objectType": "QJgZk1Z4PRnNFyl0", "reason": "Oqi7oaGEDSXG4DJu", "userId": "h0GEfgZd1KxTw9KZ"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
