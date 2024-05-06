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

Example: '{"categoryLimits": [{"extensionCategory": "CNU5qv6AeIxSzaXT", "maxReportPerTicket": 90, "name": "twXp8cWM3msqvLa3"}, {"extensionCategory": "bUJXvs8LIrjUJTqK", "maxReportPerTicket": 1, "name": "k7OOtFsrBFB83T9r"}, {"extensionCategory": "Yvra6L2rG0O7KU2s", "maxReportPerTicket": 66, "name": "9eeSI8hbmYWA8jiQ"}], "timeInterval": 25, "userMaxReportPerTimeInterval": 32}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
