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

Example: '{"description": "2BGfgbef68Pl7KIk", "isActive": true, "name": "Lj4QYLLuNTJsApXr", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "va50GjWKiqxLVuoI", "parameterType": "USERACCOUNT", "targetValue": 0.8518447676950907}, {"matcher": "GREATER_THAN", "parameterName": "OhPxxQS7abophZNf", "parameterType": "USERACCOUNT", "targetValue": 0.560841817953241}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "gF2MnHYtyM7NPXet", "parameterType": "STATISTIC", "targetValue": 0.6083378369233343}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "Rgw07ovhlxooyol5", "parameterType": "USERACCOUNT", "targetValue": 0.8897766849501036}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "XfkH7Kl0poGIj0Hd", "parameterType": "STATISTIC", "targetValue": 0.456456138624738}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "mMRvZyaMGXoTEBve", "parameterType": "USERACCOUNT", "targetValue": 0.7222888215087596}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "vhgcMLSogHH7uwK7", "parameterType": "ACHIEVEMENT", "targetValue": 0.030499126939147136}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "76Dq0NCzrvV7xf3L", "parameterType": "USERACCOUNT", "targetValue": 0.32388999882757374}, {"matcher": "EQUAL", "parameterName": "zdA2UXb446suWX5q", "parameterType": "USERACCOUNT", "targetValue": 0.6975401916244097}]}], "rewards": [{"itemId": "FT3Dau41ZHoYD5Gy", "itemName": "ZKAX5UCtvNJLwFzz", "qty": 0.4913335588405924, "type": "STATISTIC"}, {"itemId": "7YdRgdYbM7cPZE69", "itemName": "jN5crNkC6EYrVzeq", "qty": 0.7476923193384026, "type": "STATISTIC"}, {"itemId": "pqN3Wqv4sBvYLlEt", "itemName": "4aXdceGZLxmNhWg1", "qty": 0.1074207098829012, "type": "STATISTIC"}], "schedule": {"endTime": "1997-03-09T00:00:00Z", "order": 11, "startTime": "1971-05-26T00:00:00Z"}, "tags": ["rDnCEGg8DesISymG", "qEelnh5dnyJ2DTbe", "RlRq0KH3lKQnxNmN"]}'
"""

result, error = admin_update_goals(
    body=body,
    challenge_code=challenge_code,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
