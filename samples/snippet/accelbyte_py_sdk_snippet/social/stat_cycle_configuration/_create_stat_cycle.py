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

Example: '{"cycleType": "WEEKLY", "description": "p8tCQIwwqrON2Q40", "end": "1983-01-24T00:00:00Z", "name": "GHaEkcpKGlzf6fUd", "resetDate": 15, "resetDay": 53, "resetMonth": 44, "resetTime": "xRPLKAZ26pWSUAUp", "seasonPeriod": 69, "start": "1989-02-09T00:00:00Z"}'
"""

result, error = create_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
