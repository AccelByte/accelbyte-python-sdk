import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import post_event_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEvent

"""
body:
Definition: ModelsEvent
agent_type: int
client_id: str
component_id: int
event_id: int
event_level: int
event_type: int
ip_address: str
namespace: str
realm: str
target_namespace: str
target_user_id: str
time: str
ux: int
user_id: str

Example: '{"AgentType": 64, "ClientID": "nMZCgSX6TGAyseSa", "ComponentID": 11, "EventID": 57, "EventLevel": 97, "EventType": 26, "IPAddress": "aljtj1dVlN4btXZN", "Namespace": "S3yoHAGNOZ2oV05U", "Realm": "BzQOvYHOYJowDE6B", "TargetNamespace": "vHzwzmWSnZCR52N7", "TargetUserID": "2ykyKg02OwzCsKtu", "Time": "m9gBSWHiUN4Y9peT", "UX": 35, "UserID": "URjkZmkmm5fx1GR0"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
