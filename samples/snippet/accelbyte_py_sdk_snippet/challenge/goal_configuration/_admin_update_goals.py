import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_update_goals
from accelbyte_py_sdk.api.challenge.models import ModelGoalResponse
from accelbyte_py_sdk.api.challenge.models import ModelUpdateGoalRequest
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelUpdateGoalRequest
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

Example: '{"description": "WE5JuyyUHicM1UGl", "isActive": true, "name": "8KoABV0jpckfBkWO", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "OEQtjf5zkk8FIfs8", "parameterType": "USERACCOUNT", "targetValue": 0.9308732377751058}, {"matcher": "LESS_THAN", "parameterName": "LYxTs6s6EwpZ6W51", "parameterType": "ACHIEVEMENT", "targetValue": 0.3759575729238056}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "3RD1IPG38DZkPKFe", "parameterType": "STATISTIC", "targetValue": 0.008796230520582426}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "wlSjjJ7BWZbiaIUA", "parameterType": "STATISTIC", "targetValue": 0.7305316011338403}, {"matcher": "LESS_THAN", "parameterName": "x7iDyJaMCQ5lxdz8", "parameterType": "STATISTIC", "targetValue": 0.8208115806860681}, {"matcher": "GREATER_THAN", "parameterName": "KfN19GBChbf3Pyr5", "parameterType": "USERACCOUNT", "targetValue": 0.9370118086137176}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "i5bnXo4VdkZvmGeo", "parameterType": "USERACCOUNT", "targetValue": 0.11109794682268248}, {"matcher": "EQUAL", "parameterName": "YcYHnrF1ocCHJdUs", "parameterType": "ACHIEVEMENT", "targetValue": 0.5063847530165331}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "uj84alyUgn2Ke3Ov", "parameterType": "USERACCOUNT", "targetValue": 0.016007324404556655}]}], "rewards": [{"itemId": "HV6xQ5NXEneCwygI", "itemName": "rS73Q5YS765zFwve", "qty": 0.44244771371629543, "type": "STATISTIC"}, {"itemId": "5IBRUadvBjhZGqsG", "itemName": "E35K76GTPY8Q4nlk", "qty": 0.588742173400045, "type": "ENTITLEMENT"}, {"itemId": "YOhpZXLErJVjrHG7", "itemName": "jyfr9FuMYntKP2Ng", "qty": 0.9688716277349486, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1993-07-11T00:00:00Z", "order": 61, "startTime": "1998-09-20T00:00:00Z"}, "tags": ["ufjuhcZtUnRiNtTn", "3eeW4hM2eCliFDvv", "yJ5fk6VKnMcKNMnj"]}'
"""

result, error = admin_update_goals(
    body=body,
    challenge_code=challenge_code,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
