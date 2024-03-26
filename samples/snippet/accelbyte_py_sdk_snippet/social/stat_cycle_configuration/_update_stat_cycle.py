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

Example: '{"cycleType": "SEASONAL", "description": "nW64PT50e2i8hyUp", "end": "1974-10-12T00:00:00Z", "name": "L4l8msi0Qm8tFhbO", "resetDate": 47, "resetDay": 24, "resetMonth": 75, "resetTime": "BXr57UCTSyrYEwnz", "seasonPeriod": 64, "start": "1978-10-08T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
