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

Example: '{"cycleType": "WEEKLY", "description": "xqlARFgqjgQkI7Ki", "end": "1989-04-09T00:00:00Z", "name": "75cdJe9CgoKczJZI", "resetDate": 76, "resetDay": 40, "resetMonth": 82, "resetTime": "NbpR9LaF68d1TY28", "seasonPeriod": 88, "start": "1988-06-21T00:00:00Z"}'
"""

result, error = create_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
