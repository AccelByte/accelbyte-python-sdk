import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import admin_update_challenge
from accelbyte_py_sdk.api.challenge.models import ModelChallengeResponse
from accelbyte_py_sdk.api.challenge.models import ModelsUpdateChallengeRequest
from accelbyte_py_sdk.api.challenge.models import ResponseError

"""
body:
Definition: ModelsUpdateChallengeRequest
active_goals_per_rotation: int
assignment_rule: str
description: str
end_after: int
end_date: str
goals_visibility: str
name: str
repeat_after: int
rotation: str
start_date: str

Example: '{"activeGoalsPerRotation": 74, "assignmentRule": "RANDOMIZED", "description": "u6nMezbjEEK1gLft", "endAfter": 48, "endDate": "1982-01-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "JJpYCLjgFjdMtbpg", "repeatAfter": 18, "rotation": "WEEKLY", "startDate": "1992-05-06T00:00:00Z"}'
"""

result, error = admin_update_challenge(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
