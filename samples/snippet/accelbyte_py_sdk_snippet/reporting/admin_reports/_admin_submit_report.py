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

Example: '{"additionalInfo": {"o4mwyjRKzq5kkZV1": {}, "3ZWuvZHbWfkzfBDq": {}, "p18aNFwnsKvbBd7s": {}}, "category": "CHAT", "comment": "KTBkSJgcxe5ZvcEy", "extensionCategory": "bY6E5a3N34OwgfJD", "objectId": "r7q0yIFZScnTjl5i", "objectType": "eJgqa8LK4YZp8os3", "reason": "IVlxPz3DSlgKjMaI", "userId": "NG6eeqmHJVSFmyKq"}'
"""

result, error = admin_submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
