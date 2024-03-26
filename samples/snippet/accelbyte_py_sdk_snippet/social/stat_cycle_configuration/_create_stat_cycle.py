import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import create_stat_cycle
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatCycleCreate
from accelbyte_py_sdk.api.social.models import StatCycleInfo
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatCycleCreate
cycle_type: str
description: str
end: str
name: str
reset_date: int
reset_day: int
reset_month: int
reset_time: str
season_period: int
start: str

Example: '{"cycleType": "WEEKLY", "description": "D5XBRXyHexbX6yWq", "end": "1986-03-19T00:00:00Z", "name": "VK9A9QjJ85S3cYvj", "resetDate": 6, "resetDay": 81, "resetMonth": 68, "resetTime": "4OhDPxpuosYgyEtn", "seasonPeriod": 89, "start": "1974-12-01T00:00:00Z"}'
"""

result, error = create_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
