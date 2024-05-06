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

Example: '{"AgentType": 70, "ClientID": "bLERf1hQzs2XWyqS", "ComponentID": 11, "EventID": 23, "EventLevel": 95, "EventType": 11, "IPAddress": "dGpuLuDMxuu3snRN", "Namespace": "sc7fkoJlYIcm6KlQ", "Realm": "Yl2SfKO7MsIqd8lc", "TargetNamespace": "0Qdp6GPvCF3Kos6m", "TargetUserID": "j9wmEYobKN8TKGs5", "Time": "K0pQM6lOLBuZtXZH", "UX": 97, "UserID": "V13jgym603l1bfKj"}'
"""

result, error = post_event_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
