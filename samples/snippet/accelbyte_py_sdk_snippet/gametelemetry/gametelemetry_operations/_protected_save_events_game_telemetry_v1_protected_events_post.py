import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    protected_save_events_game_telemetry_v1_protected_events_post,
)
from accelbyte_py_sdk.api.gametelemetry.models import BaseErrorResponse
from accelbyte_py_sdk.api.gametelemetry.models import TelemetryBody

"""
body:
Definition: List[TelemetryBody]
client_timestamp: str
event_id: str
event_name: str
event_namespace: str
event_timestamp: str
payload: Dict[str, Any]

Example: '[{"ClientTimestamp": "1999-10-25T00:00:00Z", "EventId": "osXCgLwovCES88E9", "EventName": "ZfJnf7NKI0BGy0Np", "EventNamespace": "W82oSDdh5igviwLj", "EventTimestamp": "1982-08-29T00:00:00Z", "Payload": {"gXeVhp8D558KEsOl": {}, "XryfY44X7ppH3gp7": {}, "XlkPWwiXitmcZAY9": {}}}, {"ClientTimestamp": "1981-12-07T00:00:00Z", "EventId": "b3JP19aFvxUiAYvQ", "EventName": "pAUXkstwe0vrqCau", "EventNamespace": "VNMLDmxqte2CSYeI", "EventTimestamp": "1974-10-21T00:00:00Z", "Payload": {"GYZla6QamcPWcXrS": {}, "V5PVaA6uSQQD500j": {}, "tImZzBs7Am8QOoAQ": {}}}, {"ClientTimestamp": "1973-05-10T00:00:00Z", "EventId": "HLFKmelehKf058ql", "EventName": "CUiYtNWJtKScCalQ", "EventNamespace": "EX295WvwoWPmBSmI", "EventTimestamp": "1989-07-03T00:00:00Z", "Payload": {"gUoX0j1eljc9U9J5": {}, "f4VZtSsVW4mnrAky": {}, "2johtXMOAaRkZWBU": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
