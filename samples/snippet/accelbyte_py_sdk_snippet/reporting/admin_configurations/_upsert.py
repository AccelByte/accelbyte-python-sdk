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

Example: '{"categoryLimits": [{"extensionCategory": "iOS4DqcfBy8yeIpO", "maxReportPerTicket": 22, "name": "PfrMtZzS4uS2qhHH"}, {"extensionCategory": "lFPWsIVan0s2oSBS", "maxReportPerTicket": 25, "name": "7VpiGdGpl0kuAZ8V"}, {"extensionCategory": "qQhseCfmKqg8SVxG", "maxReportPerTicket": 29, "name": "qQcwLUwfAzYONHqx"}], "timeInterval": 35, "userMaxReportPerTimeInterval": 27}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
