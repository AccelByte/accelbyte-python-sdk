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

Example: '{"activeGoalsPerRotation": 50, "assignmentRule": "UNSCHEDULED", "code": "bbhCZ0eRAJ6CASPa", "description": "wsgTN0buYAwDT5uX", "endAfter": 79, "endDate": "1980-12-06T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "rfCLRihXfjaw3xBE", "rotation": "DAILY", "startDate": "1995-11-10T00:00:00Z"}'
"""

result, error = admin_create_challenge(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
