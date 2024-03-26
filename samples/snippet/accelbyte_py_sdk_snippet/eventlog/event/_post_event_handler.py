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

Example: '{"AgentType": 59, "ClientID": "TMbWeuEncCvP506B", "ComponentID": 66, "EventID": 51, "EventLevel": 37, "EventType": 63, "IPAddress": "oIQSGdwD9W5xqGrl", "Namespace": "mpEt8Se4hfIUkAmp", "Realm": "xPScI88kbPZofeVy", "TargetNamespace": "4A7rgXB1xoEZZcT9", "TargetUserID": "3TIld2oAHGUtblJ6", "Time": "zzghUMN5UorsMGEU", "UX": 35, "UserID": "ezh85kGOgCEHrbu0"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
