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

Example: '{"cycleType": "WEEKLY", "description": "Shdmoq4gCopVEw43", "end": "1993-02-28T00:00:00Z", "name": "PKhCS8M2FWsTGhHx", "resetDate": 12, "resetDay": 95, "resetMonth": 92, "resetTime": "pSQhmy1aJPE0W2j0", "seasonPeriod": 81, "start": "1990-10-22T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
