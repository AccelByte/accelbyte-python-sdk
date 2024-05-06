import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_stat_cycle
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatCycleInfo
from accelbyte_py_sdk.api.social.models import StatCycleUpdate
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatCycleUpdate
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

Example: '{"cycleType": "DAILY", "description": "GGUdm6BMvUrrz0O0", "end": "1995-12-14T00:00:00Z", "name": "WVK5rf3TJ3fgqSGR", "resetDate": 48, "resetDay": 56, "resetMonth": 45, "resetTime": "3gszrFeW9dsl6eCR", "seasonPeriod": 3, "start": "1998-10-06T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
