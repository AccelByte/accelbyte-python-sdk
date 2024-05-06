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

Example: '[{"ClientTimestamp": "1981-09-21T00:00:00Z", "EventId": "NX2aQa5ccNfKpf9D", "EventName": "Y1xrBQCKI3dU8weM", "EventNamespace": "ouVk34bo3jWvJFlH", "EventTimestamp": "1997-08-14T00:00:00Z", "Payload": {"yp36FJNNH2IPm9b5": {}, "mmMFkG7M1w5yeCCd": {}, "SoTtxls3RI4r8iIP": {}}}, {"ClientTimestamp": "1999-05-27T00:00:00Z", "EventId": "4RF2oqYZykwhualk", "EventName": "jRiNl28jtDR0uqm0", "EventNamespace": "dVGxHdun4toaQaEG", "EventTimestamp": "1981-12-14T00:00:00Z", "Payload": {"JONOJ0Q8jutPhhOm": {}, "aZkZKpa8ubyR40MR": {}, "67fYOcC6L8nlBf3A": {}}}, {"ClientTimestamp": "1981-02-21T00:00:00Z", "EventId": "YZ1tJUc5y4xH7vnK", "EventName": "KP6XGMuECo1eI5rM", "EventNamespace": "ER7rZ9KKWY6JnFJv", "EventTimestamp": "1988-12-03T00:00:00Z", "Payload": {"93jSIovYPI0pKAuj": {}, "xgy7NUI01AWo2WHU": {}, "FaTWy0kYjjXxlevC": {}}}]'
"""

result, error = protected_save_events_game_telemetry_v1_protected_events_post(
    body=body,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
