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

Example: '{"AgentType": 7, "ClientID": "VVXSFfoZUikOy8Jp", "ComponentID": 58, "EventID": 5, "EventLevel": 92, "EventType": 6, "IPAddress": "k8bCdMiWs7rRBzg3", "Namespace": "vs1IC0BvWf4jbklK", "Realm": "DrRXsEnchlwRFwzU", "TargetNamespace": "qgHXh8vraOvFt6zd", "TargetUserID": "YaikBVTsc64TXG4s", "Time": "uAGm6FInj6zxJbJQ", "UX": 28, "UserID": "gg24WHklEB65UxAH"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
