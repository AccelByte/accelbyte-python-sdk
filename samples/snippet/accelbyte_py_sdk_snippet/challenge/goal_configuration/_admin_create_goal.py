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

Example: '{"code": "iCUAuN9vcBfGQ4aY", "description": "x4hV81wEQDmuvHCH", "isActive": true, "name": "73DCoNSksO9Wjtho", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "UHgdjA7hoWOwVZ50", "parameterType": "STATISTIC", "targetValue": 0.29444285219396804}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "j3LvFEIUwSz3qpxQ", "parameterType": "USERACCOUNT", "targetValue": 0.8155799001909028}, {"matcher": "EQUAL", "parameterName": "EMCpZh0lS0iuWvKT", "parameterType": "USERACCOUNT", "targetValue": 0.9509861059970649}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "4ClZr8Dj8WuJBy1k", "parameterType": "ACHIEVEMENT", "targetValue": 0.45643492332454216}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "2OfVwhGCnIaRTZtt", "parameterType": "ACHIEVEMENT", "targetValue": 0.6956908389588548}, {"matcher": "GREATER_THAN", "parameterName": "bLcgWOkjNokqny7q", "parameterType": "STATISTIC", "targetValue": 0.5707358896825957}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "30qT2DJsI1aZljaf", "parameterType": "ACHIEVEMENT", "targetValue": 0.4870135622177906}, {"matcher": "LESS_THAN", "parameterName": "pO7jXaK2Z8yq0CSt", "parameterType": "ACHIEVEMENT", "targetValue": 0.2451239345608458}, {"matcher": "LESS_THAN", "parameterName": "UavpitcSH9K3Uo4m", "parameterType": "STATISTIC", "targetValue": 0.5005844410546157}]}], "rewards": [{"itemId": "iIOvSRMkOABcYVg7", "itemName": "2At17CgRJ0rf0FBr", "qty": 0.3009286130026644, "type": "STATISTIC"}, {"itemId": "3yoiag1gMHgI1vIg", "itemName": "gCQwzjn7yUsegmn7", "qty": 0.2292104779845685, "type": "STATISTIC"}, {"itemId": "9DzRQZw8wqqZ8zSs", "itemName": "fStd8DRw8quZkyhh", "qty": 0.4880747636052595, "type": "STATISTIC"}], "schedule": {"endTime": "1988-03-12T00:00:00Z", "order": 23, "startTime": "1979-11-02T00:00:00Z"}, "tags": ["coEvn2Y9rSj5KGEf", "hTlxeoSw9U9vk9eF", "JdWopBgrNODUQsL9"]}'
"""

result, error = admin_create_goal(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
