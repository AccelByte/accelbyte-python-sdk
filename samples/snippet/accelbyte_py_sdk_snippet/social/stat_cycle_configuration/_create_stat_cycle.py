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

Example: '{"cycleType": "WEEKLY", "description": "eSV1Kq8dRVaV33ll", "end": "1994-11-20T00:00:00Z", "name": "CxrsZqDTQ11HdK5d", "resetDate": 51, "resetDay": 43, "resetMonth": 74, "resetTime": "YBBsJfjwR9uNJsf8", "seasonPeriod": 62, "start": "1989-01-15T00:00:00Z"}'
"""

result, error = create_stat_cycle(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
