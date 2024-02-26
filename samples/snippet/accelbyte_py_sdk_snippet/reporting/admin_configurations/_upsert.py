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

Example: '{"categoryLimits": [{"extensionCategory": "wLVVmmfgzG0T6s4k", "maxReportPerTicket": 80, "name": "IcviHpeizrhF7wq3"}, {"extensionCategory": "PE7Im4eczo4jcHGg", "maxReportPerTicket": 73, "name": "M1AjFfU4IpuqCx3F"}, {"extensionCategory": "TwZBXcaAP64FpHOL", "maxReportPerTicket": 3, "name": "w2fYYLwlXx4ASmEd"}], "timeInterval": 28, "userMaxReportPerTimeInterval": 67}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
