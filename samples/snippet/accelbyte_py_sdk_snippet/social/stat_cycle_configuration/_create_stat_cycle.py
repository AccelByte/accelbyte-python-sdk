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

Example: '{"cycleType": "DAILY", "description": "Z0EQWXVrbHuPItyF", "end": "1971-04-07T00:00:00Z", "name": "fwt06DbKDxBZsWvv", "resetDate": 42, "resetDay": 83, "resetMonth": 89, "resetTime": "GwVCdIIdqQ2D5L7T", "seasonPeriod": 49, "start": "1975-09-29T00:00:00Z"}'
"""

result, error = create_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
