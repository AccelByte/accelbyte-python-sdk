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

Example: '{"description": "TlXRePIF51ekG2Nz", "isActive": false, "name": "3nlmeMo2Hyv0d43L", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "t9IQ7d1ZUBSytd8L", "parameterType": "USERACCOUNT", "targetValue": 0.7285462486185713}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "DrdIlDoFprXZg8nU", "parameterType": "STATISTIC", "targetValue": 0.2608533370157945}, {"matcher": "GREATER_THAN", "parameterName": "a3F7Q1guTgZWScHg", "parameterType": "STATISTIC", "targetValue": 0.31775257568661197}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "v0zwMNG9YOdVPuIV", "parameterType": "USERACCOUNT", "targetValue": 0.040966133374160996}, {"matcher": "LESS_THAN", "parameterName": "NqFTuqb72gz2Jxpq", "parameterType": "ACHIEVEMENT", "targetValue": 0.1473532606786202}, {"matcher": "LESS_THAN", "parameterName": "JUqHlANxLrWvVz1M", "parameterType": "USERACCOUNT", "targetValue": 0.41286383574544305}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "vxj41gqXlPW9hadV", "parameterType": "USERACCOUNT", "targetValue": 0.7502485454933756}, {"matcher": "EQUAL", "parameterName": "zHgRrUiG2AQoc5st", "parameterType": "ACHIEVEMENT", "targetValue": 0.6078016807086238}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "QAbdB2DyJ8iqbpDU", "parameterType": "STATISTIC", "targetValue": 0.4079440019177525}]}], "rewards": [{"itemId": "DcxNLGXutO1nSIJ0", "itemName": "9sJ2f5IcYKNQJw0t", "qty": 0.1636597530571935, "type": "STATISTIC"}, {"itemId": "bSdpiTT6PfPpCLmR", "itemName": "wXaMi8jJniw3MW0n", "qty": 0.22913880836205802, "type": "STATISTIC"}, {"itemId": "JiqhdxtRrCnQZbBR", "itemName": "z4oetVLn95DsW1JG", "qty": 0.24649671146052832, "type": "STATISTIC"}], "schedule": {"endTime": "1983-01-10T00:00:00Z", "order": 15, "startTime": "1981-03-13T00:00:00Z"}, "tags": ["Y7zpoxUAS0VuMTRL", "1SglrDXEkaMPf51v", "hn3Vs6VCkrI3Tn49"]}'
"""

result, error = admin_update_goals(
    body=body,
    challenge_code=challenge_code,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
