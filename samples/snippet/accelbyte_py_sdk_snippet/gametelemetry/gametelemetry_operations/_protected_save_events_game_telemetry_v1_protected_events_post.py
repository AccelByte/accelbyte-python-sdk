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

Example: '[{"ClientTimestamp": "1972-01-28T00:00:00Z", "EventId": "gOsuRVs912JYJKmK", "EventName": "BXABJuL7tZf5Bw8V", "EventNamespace": "8iFu41kICAJtuL9M", "EventTimestamp": "1994-04-05T00:00:00Z", "Payload": {"lzf4HLmBSZEgWicY": {}, "dDALkneBT2TQtrgu": {}, "CpyJOfeskQ8vpv5u": {}}}, {"ClientTimestamp": "1991-01-27T00:00:00Z", "EventId": "RGHuWWHTwppW244I", "EventName": "hVZdt7CO0Z7UADVq", "EventNamespace": "Dhmyx4EKbq78C3oR", "EventTimestamp": "1984-11-23T00:00:00Z", "Payload": {"oCB8J8dfvInBalUP": {}, "NS2uLdW8e1s9gh3B": {}, "EFT7giai1j6zTIxJ": {}}}, {"ClientTimestamp": "1983-03-16T00:00:00Z", "EventId": "3T95qtlb62Acbhb0", "EventName": "a848iVcrI9T2ZXe9", "EventNamespace": "ZMZT6WsWUyvbogBY", "EventTimestamp": "1983-04-22T00:00:00Z", "Payload": {"fDt5Wry6X1eK2IQN": {}, "8JKw8lV9BZGSm2YT": {}, "Nj08xbWwxUQpMwTJ": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
