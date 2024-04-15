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

Example: '{"AgentType": 80, "ClientID": "sbNgiRU6tZVeOESZ", "ComponentID": 75, "EventID": 53, "EventLevel": 88, "EventType": 75, "IPAddress": "f7ZKJNNvngmuHp5y", "Namespace": "OxRzaBdLDAu5ZVXN", "Realm": "25NgAq4L8yNdqJVO", "TargetNamespace": "evL2k8uNoHYnekmb", "TargetUserID": "vEzXqnKK3lNWW5SY", "Time": "YucLuXnkjMFdrGMA", "UX": 71, "UserID": "vKLVGKjH7zAKouqO"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
