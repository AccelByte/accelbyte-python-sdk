import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_create_mod_action
from accelbyte_py_sdk.api.reporting.models import RestapiActionApiRequest
from accelbyte_py_sdk.api.reporting.models import RestapiActionApiResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

"""
body:
Definition: RestapiActionApiRequest
action_id: str
action_name: str
event_name: str

Example: '{"actionId": "DwDXjCjurSQio0gF", "actionName": "yFapRHhazL5vQBNo", "eventName": "E52oJ1cHoQzlolis"}'
"""

result, error = admin_create_mod_action(
    body=body,
    x_additional_headers=x_additional_headers,
)
