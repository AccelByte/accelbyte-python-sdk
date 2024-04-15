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

Example: '{"cycleType": "SEASONAL", "description": "ZOTKFSPZXc1CWHkJ", "end": "1989-12-09T00:00:00Z", "name": "C8ldNrnLWcUj6FAD", "resetDate": 6, "resetDay": 66, "resetMonth": 35, "resetTime": "qYWtT3zH8ErhqFj4", "seasonPeriod": 94, "start": "1972-09-03T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
