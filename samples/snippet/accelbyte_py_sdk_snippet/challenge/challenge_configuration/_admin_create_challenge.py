import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_create_challenge
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelChallengeResponse
from accelbyte_py_sdk.api.challenge.models import ModelCreateChallengeRequest
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelCreateChallengeRequest
active_goals_per_rotation: int
assignment_rule: str
code: str
description: str
end_after: int
end_date: str
goals_visibility: str
name: str
repeat_after: int
rotation: str
start_date: str

Example: '{"activeGoalsPerRotation": 79, "assignmentRule": "UNSCHEDULED", "code": "MAdTtlJ2tHeBeS1Z", "description": "H7SDtYT2mBRjbVc8", "endAfter": 100, "endDate": "1998-12-17T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "vBa3WmMlXUlvNEKk", "repeatAfter": 61, "rotation": "WEEKLY", "startDate": "1987-04-26T00:00:00Z"}'
"""

result, error = admin_create_challenge(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
