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

Example: '{"additionalInfo": {"NnPVJeIgK6d76wi6": {}, "RJ30oZosEqudAiRH": {}, "EixiERyoYrKmue30": {}}, "category": "USER", "comment": "M94oTG5CpoZNbdxq", "extensionCategory": "DQWAMaDggreqRxn5", "objectId": "rC8GW49whnWMlv1Y", "objectType": "sycgS5bNGzaKoz4D", "reason": "JpB8tLsa7e8DSq4n", "userId": "OrvzXoBgjbIymxg1"}'
"""

result, error = submit_report(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
