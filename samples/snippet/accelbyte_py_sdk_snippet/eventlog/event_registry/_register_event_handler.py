import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import register_event_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventRegistry

"""
body:
Definition: ModelsEventRegistry
event_id: int
event_level: int
event_type: int
ux: int

Example: '{"EventID": 7, "EventLevel": 41, "EventType": 44, "UX": 69}'
"""

result, error = register_event_handler(
    body=body,
    x_additional_headers=x_additional_headers,
)
