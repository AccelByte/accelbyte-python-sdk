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

Example: '[{"ClientTimestamp": "1980-05-12T00:00:00Z", "EventId": "GVJbYOvJI6mmk48w", "EventName": "2khWwOzAgD17F04C", "EventNamespace": "mtCqe6Ytd0Q568D2", "EventTimestamp": "1987-06-24T00:00:00Z", "Payload": {"7QhxSyNR9xoXp9Zj": {}, "HSyzxNthTZSBOubG": {}, "vRWAVbNKQZGmIbfu": {}}}, {"ClientTimestamp": "1974-04-28T00:00:00Z", "EventId": "q0lPPvVfJIHzhB2W", "EventName": "vomt6OrPHLoPkyno", "EventNamespace": "nxYBcEMW1TMClAcB", "EventTimestamp": "1972-04-18T00:00:00Z", "Payload": {"5Luz4Pa0NDtWqifl": {}, "7O9zam8IzcbzvEF0": {}, "3j5yGk3qtmUAMT9o": {}}}, {"ClientTimestamp": "1983-03-09T00:00:00Z", "EventId": "2iBp3KMOjNYgKOS6", "EventName": "V1WlllUXy19XgH3i", "EventNamespace": "Oez1VPb3Z6rp8Qaj", "EventTimestamp": "1989-04-24T00:00:00Z", "Payload": {"IyLvwgsdrWX7g2kZ": {}, "YkXxOGNBTq1BRUze": {}, "yythLmA8IN5FNnaE": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
