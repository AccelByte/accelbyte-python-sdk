import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_create_goal
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelCreateGoalRequest
from accelbyte_py_sdk.api.challenge.models import ModelGoalResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelCreateGoalRequest
code: str
description: str
is_active: bool
name: str
requirement_groups: List[ModelRequirement]
Definition: List[ModelRequirement]
    operator: str
    predicates: List[ModelPredicate]
    Definition: List[ModelPredicate]
        matcher: str
        parameter_name: str
        parameter_type: str
        target_value: float
rewards: List[ModelReward]
Definition: List[ModelReward]
    item_id: str
    item_name: str
    qty: float
    type_: str
schedule: ModelGoalSchedule
Definition: ModelGoalSchedule
    end_time: str
    order: int
    start_time: str
tags: List[str]

Example: '{"code": "d1njqg70fxorVg7Q", "description": "ojCv5HntMvOI4bAq", "isActive": true, "name": "3wMTltxYh2RJ15ST", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "GxDFFjiYrZcEBDDY", "parameterType": "USERACCOUNT", "targetValue": 0.599868382576844}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "6OsZw1k6jHjq6RCn", "parameterType": "STATISTIC", "targetValue": 0.1727070988245628}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "4Efv625emG5DDHBN", "parameterType": "ACHIEVEMENT", "targetValue": 0.669245944896869}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "x8cXy74qviRZGJws", "parameterType": "ACHIEVEMENT", "targetValue": 0.4808514339346619}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "52y4uIxKfTKwKktE", "parameterType": "STATISTIC", "targetValue": 0.9240932490908493}, {"matcher": "LESS_THAN", "parameterName": "RZ6bPfuPYkm9zRFB", "parameterType": "ACHIEVEMENT", "targetValue": 0.8146519990407607}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "tlYPzQrb5MwDdaW1", "parameterType": "STATISTIC", "targetValue": 0.7912395602016712}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "fR8a0W77UyADduDE", "parameterType": "USERACCOUNT", "targetValue": 0.15395664835961975}, {"matcher": "GREATER_THAN", "parameterName": "b77ThUTMpJ2RoLQS", "parameterType": "ACHIEVEMENT", "targetValue": 0.7349174739564754}]}], "rewards": [{"itemId": "Dr6VQpKYCcWhBBsx", "itemName": "MuY7GfLXCr6bkK6O", "qty": 0.750321358175685, "type": "ENTITLEMENT"}, {"itemId": "3HRbBGFFQGn4BCHC", "itemName": "lHXWgrlvgufJysv6", "qty": 0.931365361115923, "type": "ENTITLEMENT"}, {"itemId": "RyzdhsHlHHYEpy4T", "itemName": "x6MXmauZqu2CPU7D", "qty": 0.5791739452534181, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1997-10-09T00:00:00Z", "order": 50, "startTime": "1979-03-19T00:00:00Z"}, "tags": ["srKtxaDAcEbPgmgF", "sZcYjE6QoZq1brXM", "2p65iEQGAJorWNc6"]}'
"""

result, error = admin_create_goal(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
