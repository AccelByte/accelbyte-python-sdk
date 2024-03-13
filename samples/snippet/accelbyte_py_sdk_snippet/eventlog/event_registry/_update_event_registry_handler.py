import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import update_event_registry_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventRegistry

"""
body:
Definition: ModelsEventRegistry
event_id: int
event_level: int
event_type: int
ux: int

Example: '{"EventID": 22, "EventLevel": 42, "EventType": 35, "UX": 21}'
"""

result, error = update_event_registry_handler(
    body=body,
    event_id=event_id,
    x_additional_headers=x_additional_headers,
)
