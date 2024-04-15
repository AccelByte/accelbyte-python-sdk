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
rotation: str
start_date: str

Example: '{"activeGoalsPerRotation": 28, "assignmentRule": "RANDOMIZED", "code": "azgeG6rGM5QClgzq", "description": "Jkb6dkOS70IeAxpn", "endAfter": 90, "endDate": "1973-09-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "deSJ4Rc6kaNM5wC6", "rotation": "MONTHLY", "startDate": "1984-01-30T00:00:00Z"}'
"""

result, error = admin_create_challenge(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
