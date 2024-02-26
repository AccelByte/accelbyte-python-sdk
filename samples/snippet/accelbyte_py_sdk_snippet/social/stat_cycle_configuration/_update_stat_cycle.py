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

Example: '{"cycleType": "MONTHLY", "description": "CCepMJkpqP0qrWYO", "end": "1971-04-13T00:00:00Z", "name": "kIAV6ZyQq9dvGNyz", "resetDate": 53, "resetDay": 95, "resetMonth": 4, "resetTime": "7gvjO9xqw6lMcfTS", "seasonPeriod": 57, "start": "1996-10-28T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
