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

Example: '{"activeGoalsPerRotation": 11, "assignmentRule": "FIXED", "description": "ZwfTpsN1C6Zb081f", "endAfter": 18, "endDate": "1975-04-04T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "OGGvDKIEq75Bh1jq", "rotation": "DAILY", "startDate": "1983-12-19T00:00:00Z"}'
"""

result, error = admin_update_challenge(
    body=body,
    challenge_code=challenge_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
