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

Example: '{"cycleType": "MONTHLY", "description": "Bb0H8iQYLZsaM91G", "end": "1989-03-02T00:00:00Z", "name": "659tpKNfNN9XAP1K", "resetDate": 77, "resetDay": 87, "resetMonth": 20, "resetTime": "dgXMbXJdu3D0mPNe", "seasonPeriod": 86, "start": "1975-10-19T00:00:00Z"}'
"""

result, error = update_stat_cycle(
    cycle_id=cycle_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
