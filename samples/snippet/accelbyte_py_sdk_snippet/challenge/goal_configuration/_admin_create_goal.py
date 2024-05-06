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

Example: '{"code": "dy2EP0vRFkw1CIaQ", "description": "UQ1NnfmIgyIaP4av", "isActive": true, "name": "TMtUCMTljPHEAjUG", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "462HQkGn1qaHT943", "parameterType": "STATISTIC", "targetValue": 0.7433586162137071}, {"matcher": "LESS_THAN", "parameterName": "qYhEqTJyb0G8McPU", "parameterType": "USERACCOUNT", "targetValue": 0.15157014619957565}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "VPdfsqccqw5G0bVh", "parameterType": "ACHIEVEMENT", "targetValue": 0.6174543825768085}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "oLAeaMn3NhjzhQrT", "parameterType": "STATISTIC", "targetValue": 0.5235797477007398}, {"matcher": "EQUAL", "parameterName": "wKyDasZYJkd82Njt", "parameterType": "USERACCOUNT", "targetValue": 0.8224858635346056}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "HzIYaFQ4tYBGTksQ", "parameterType": "USERACCOUNT", "targetValue": 0.4929313177772867}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "3b4qMVwzC7zHha1J", "parameterType": "USERACCOUNT", "targetValue": 0.1887468836007128}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "q0l9BIpGCKQdVTKJ", "parameterType": "STATISTIC", "targetValue": 0.255659017666233}, {"matcher": "EQUAL", "parameterName": "2jUVye1e7ZYXMQzP", "parameterType": "USERACCOUNT", "targetValue": 0.9179824296165111}]}], "rewards": [{"itemId": "QVCAPzh8d67Au616", "itemName": "NtTz6J4SkvhoHHsU", "qty": 0.03329456636670447, "type": "ENTITLEMENT"}, {"itemId": "WFNjxJE7EyTI1rG6", "itemName": "peKgWnzTJmkW9wji", "qty": 0.262258059143067, "type": "ENTITLEMENT"}, {"itemId": "fE3x8xEQpUR32Vq0", "itemName": "3GXCjj2gqyy3lFd1", "qty": 0.054256085755229666, "type": "STATISTIC"}], "schedule": {"endTime": "1977-12-03T00:00:00Z", "order": 64, "startTime": "1994-12-10T00:00:00Z"}, "tags": ["qMYWdAobEknM8JsL", "qD38woPmyI5qxkWn", "BAKyvHQ2bfBAfMXl"]}'
"""

result, error = admin_create_goal(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
