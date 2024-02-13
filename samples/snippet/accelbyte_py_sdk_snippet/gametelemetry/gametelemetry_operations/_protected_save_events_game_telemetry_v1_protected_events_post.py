import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    protected_save_events_game_telemetry_v1_protected_events_post,
)
from accelbyte_py_sdk.api.gametelemetry.models import HTTPValidationError
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

Example: '[{"ClientTimestamp": "1983-03-30T00:00:00Z", "EventId": "lB6L6k9SURAqj290", "EventName": "isC7IGoGr4eNMvmI", "EventNamespace": "abinAke3qjiQYLsC", "EventTimestamp": "1999-11-05T00:00:00Z", "Payload": {"cBeVLclmOI0Yolfv": {}, "ZqA8I3MwrSigahDn": {}, "k89esMo82QKDB6Qq": {}}}, {"ClientTimestamp": "1995-04-05T00:00:00Z", "EventId": "sellDjXTXtEKMXJ0", "EventName": "bWzbG72agMDqNlYu", "EventNamespace": "Yfw0kJJ56b4UNrxZ", "EventTimestamp": "1990-09-11T00:00:00Z", "Payload": {"guJVsR8c2k3zpmje": {}, "B6mkNUfxDxXShkM0": {}, "MO1ugqH9HOXFmicG": {}}}, {"ClientTimestamp": "1988-12-05T00:00:00Z", "EventId": "KUD2AMfndRlGlSNU", "EventName": "Xv8A0tnuI705wGUz", "EventNamespace": "fJWfaQlJmxu4oveR", "EventTimestamp": "1996-09-24T00:00:00Z", "Payload": {"qpNgWj3Kqj4kVWvl": {}, "v4Q8FFfDMeLDKiu5": {}, "CeKLUURhRWWISIuV": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
