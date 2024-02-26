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

Example: '{"AgentType": 56, "ClientID": "ooH9UCJMm70TY6wN", "ComponentID": 76, "EventID": 91, "EventLevel": 40, "EventType": 29, "IPAddress": "jZVustoywQeJBaL1", "Namespace": "w2Vz3X7ifA85C6e3", "Realm": "xdTnQT6ebpTAgQEN", "TargetNamespace": "7nmmJDIAdxZedEln", "TargetUserID": "9JFUFCKosXIaHjOd", "Time": "O6qn0kDf0uXkIOCn", "UX": 16, "UserID": "CpscdHlGVtMUHx3T"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
