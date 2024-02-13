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

Example: '{"additionalInfo": {"AsvgQRgO5zQOedqm": {}, "i2wX3xPbN9oI8ho1": {}, "Vq5qk66nEL8LD3AC": {}}, "category": "UGC", "comment": "kM59oH8vQVftFzIh", "extensionCategory": "7SAQ6D0159ImeEB6", "objectId": "SbUzkxOSKWM1fD2d", "objectType": "7KfN7GQDfuSQWjPf", "reason": "1asXe561j8KoWb9q", "userId": "orVqbIJHNppILkov"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
