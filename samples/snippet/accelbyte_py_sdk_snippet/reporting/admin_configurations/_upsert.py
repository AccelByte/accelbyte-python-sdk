import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import upsert
from accelbyte_py_sdk.api.reporting.models import RestapiConfigResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiReportingLimit

"""
body:
Definition: RestapiReportingLimit
category_limits: List[RestapiCategoryLimit]
Definition: List[RestapiCategoryLimit]
    extension_category: str
    max_report_per_ticket: int
    name: str
time_interval: int
user_max_report_per_time_interval: int

Example: '{"categoryLimits": [{"extensionCategory": "swBCw7lEMtVlV7Uo", "maxReportPerTicket": 39, "name": "Il1SPBInkQhAJV5l"}, {"extensionCategory": "yg7KxMJ7Ahb0W0Im", "maxReportPerTicket": 59, "name": "zWQD6GS67JYNzB6t"}, {"extensionCategory": "hY2BuAICOfqWW0OT", "maxReportPerTicket": 40, "name": "jx2pFhvj3elW6Y2w"}], "timeInterval": 42, "userMaxReportPerTimeInterval": 91}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
