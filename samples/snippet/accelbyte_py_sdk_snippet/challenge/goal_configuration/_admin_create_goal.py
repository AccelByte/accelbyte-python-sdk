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

Example: '{"code": "MB3l3r1TDar2nZY4", "description": "zijMgIJznskp5SbE", "isActive": false, "name": "9YrKSn8Od1pPqi5f", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "kHMiDEioW9S4spja", "parameterType": "ACHIEVEMENT", "targetValue": 0.42530161772866193}, {"matcher": "EQUAL", "parameterName": "eGVHDw4kONzFs7dK", "parameterType": "ACHIEVEMENT", "targetValue": 0.45921572111846165}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "wVNPNt9NgyYYbxwF", "parameterType": "USERACCOUNT", "targetValue": 0.7270802300114914}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "kFSfiOoYqtmeo2P0", "parameterType": "STATISTIC", "targetValue": 0.6390087725850092}, {"matcher": "GREATER_THAN", "parameterName": "uLo9O9OjLeYKqBRT", "parameterType": "ACHIEVEMENT", "targetValue": 0.0853419863838718}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "3PD0aXxzbXcc8lme", "parameterType": "STATISTIC", "targetValue": 0.028604159565604026}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "hgPDrC7YIdjCvv8b", "parameterType": "ACHIEVEMENT", "targetValue": 0.565675645256181}, {"matcher": "GREATER_THAN", "parameterName": "eZqQifvIWGScccdF", "parameterType": "ACHIEVEMENT", "targetValue": 0.502808946030004}, {"matcher": "GREATER_THAN", "parameterName": "Gjv7sIQUAONjZErb", "parameterType": "ACHIEVEMENT", "targetValue": 0.6799333510807133}]}], "rewards": [{"itemId": "2Ju2PhrsA87ry3d0", "itemName": "BDxc3hqLszy8SGIE", "qty": 0.3610415472931917, "type": "STATISTIC"}, {"itemId": "B2KPSxVMar94noN1", "itemName": "oF1rDBCwdla6jg14", "qty": 0.0927813708794859, "type": "STATISTIC"}, {"itemId": "fP5xBUccPfbKbpSX", "itemName": "ku2vEBBmsWu07UzV", "qty": 0.9287654147132239, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1975-08-11T00:00:00Z", "order": 64, "startTime": "1971-01-30T00:00:00Z"}, "tags": ["YKdxzdxyUlUMmiup", "dzEvWlpe5DZZM6m9", "ckp467nBqnxLzTPO"]}'
"""

result, error = admin_create_goal(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
