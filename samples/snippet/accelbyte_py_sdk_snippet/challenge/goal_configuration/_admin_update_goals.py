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

Example: '{"description": "mg4EZRBBTkRo2NO7", "isActive": false, "name": "N5pkRgvVVh4HL8xO", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "1V4jIUE5OhXJn56C", "parameterType": "USERACCOUNT", "targetValue": 0.6736019537434119}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "GNVOsu5OyPvOJngY", "parameterType": "ACHIEVEMENT", "targetValue": 0.23759694802371778}, {"matcher": "LESS_THAN", "parameterName": "aA9yTSHviz5Dmhgl", "parameterType": "STATISTIC", "targetValue": 0.9653601505036978}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "nylkgLPSJ3R3p2wg", "parameterType": "USERACCOUNT", "targetValue": 0.5191527892711035}, {"matcher": "GREATER_THAN", "parameterName": "daAb3FaMl1bXOBmn", "parameterType": "ACHIEVEMENT", "targetValue": 0.5915997268649477}, {"matcher": "EQUAL", "parameterName": "v3yvvlGKzceNnajN", "parameterType": "ACHIEVEMENT", "targetValue": 0.39978066595854334}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "q8b9gx1LA9rpGd9M", "parameterType": "ACHIEVEMENT", "targetValue": 0.2510611184672673}, {"matcher": "GREATER_THAN", "parameterName": "sklaHRlrUUwTvbjl", "parameterType": "STATISTIC", "targetValue": 0.829273001040462}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "GW6bc5sSYfLTebgo", "parameterType": "STATISTIC", "targetValue": 0.5150489611859814}]}], "rewards": [{"itemId": "aD7pTsMX0JmEcpaU", "itemName": "uU7EnzCTQwzcXKVs", "qty": 0.8629546584355923, "type": "STATISTIC"}, {"itemId": "Y3zwGQTwpbNP8Ixx", "itemName": "uLzAdZFlxKO0Iwzh", "qty": 0.5875922463143732, "type": "STATISTIC"}, {"itemId": "d8rnepKeQPR048mo", "itemName": "eN5QeG4LWjlh3mSe", "qty": 0.6241060559235331, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1984-11-30T00:00:00Z", "order": 83, "startTime": "1989-02-15T00:00:00Z"}, "tags": ["d1C3di8pILgzbZ97", "Xch8z3GkzV3sCAfE", "IkEATDaOrYBYX3Zi"]}'
"""

result, error = admin_update_goals(
    body=body,
    challenge_code=challenge_code,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
