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

Example: '{"actionId": "Bh2cMjTJi0oB7C2m", "actionName": "3pHTkHnFc4IO08If", "eventName": "vvuVIVJ2kK34xdAr"}'
"""

result, error = admin_create_mod_action(
    body=body,
    x_additional_headers=x_additional_headers,
)
