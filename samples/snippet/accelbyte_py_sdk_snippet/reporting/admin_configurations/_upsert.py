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

Example: '{"categoryLimits": [{"extensionCategory": "b2VQPMDdfsVxVmo9", "maxReportPerTicket": 29, "name": "5L10ZthmayK2lo9r"}, {"extensionCategory": "p786MYjay88UWUQw", "maxReportPerTicket": 40, "name": "Rp8Rdiff7p4Zc0Gf"}, {"extensionCategory": "I10sq2JRSXjqpExC", "maxReportPerTicket": 21, "name": "e65TnDvwM34cEB0w"}], "timeInterval": 0, "userMaxReportPerTimeInterval": 84}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
