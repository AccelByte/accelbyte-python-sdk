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
rotation: str
start_date: str

Example: '{"activeGoalsPerRotation": 50, "assignmentRule": "RANDOMIZED", "description": "jt5t2PCC6gUNWQ4Z", "endAfter": 66, "endDate": "1996-03-17T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "c5BcjBlw40S8MQj1", "rotation": "WEEKLY", "startDate": "1991-05-31T00:00:00Z"}'
"""

result, error = admin_update_challenge(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
