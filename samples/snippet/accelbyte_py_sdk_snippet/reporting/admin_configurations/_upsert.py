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

Example: '{"categoryLimits": [{"extensionCategory": "dxcVRTnFeburUCrL", "maxReportPerTicket": 16, "name": "uQAoo2dyPP0qotpF"}, {"extensionCategory": "SuL1OvthaWHYh5pj", "maxReportPerTicket": 49, "name": "fJ9aL4105mCuGUMU"}, {"extensionCategory": "BJZBiZnx0jJJqc7V", "maxReportPerTicket": 19, "name": "ESto0SeQCZlO91Kt"}], "timeInterval": 83, "userMaxReportPerTimeInterval": 30}'
"""

result, error = upsert(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
