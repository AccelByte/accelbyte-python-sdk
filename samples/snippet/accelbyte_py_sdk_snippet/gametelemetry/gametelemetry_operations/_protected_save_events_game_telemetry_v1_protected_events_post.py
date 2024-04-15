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

Example: '[{"ClientTimestamp": "1978-09-24T00:00:00Z", "EventId": "wdhBqsYs5RmtWjE8", "EventName": "2VV4gMVn5MDwHeob", "EventNamespace": "OBDnhBoBpNJDD8xD", "EventTimestamp": "1990-05-15T00:00:00Z", "Payload": {"htRA6sNrqY30FIaJ": {}, "N7BZNVbG89q3x5HJ": {}, "yud1CVKb7m4mTJuh": {}}}, {"ClientTimestamp": "1989-11-17T00:00:00Z", "EventId": "jKXbVqeCK6SRFRyC", "EventName": "6Z8436aW7LcLUsEa", "EventNamespace": "wK6Xle5CvBkrkAId", "EventTimestamp": "1985-04-13T00:00:00Z", "Payload": {"j3hEVtiWelhnDP36": {}, "qvs0s0dLwfPlB2ef": {}, "MLmG2umXRgH3mGc2": {}}}, {"ClientTimestamp": "1989-05-12T00:00:00Z", "EventId": "ZzK1hEZWEAFalVZ8", "EventName": "6A4GOSFs13FKYqwZ", "EventNamespace": "pBPJzWWAB3spQPpz", "EventTimestamp": "1988-04-19T00:00:00Z", "Payload": {"QIqRkhDkkUm1JlrY": {}, "8aGwbkbdPTHlISYq": {}, "OaSmdhVeuDKqqdOF": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
