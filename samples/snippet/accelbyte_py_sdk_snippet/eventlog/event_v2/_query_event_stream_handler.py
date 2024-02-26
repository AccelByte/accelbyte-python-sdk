import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import query_event_stream_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponseV2
from accelbyte_py_sdk.api.eventlog.models import ModelsGenericQueryPayload

"""
body:
Definition: ModelsGenericQueryPayload
client_id: str
event_name: str
payload_query: Dict[str, Any]
session_id: str
trace_id: str
user_id: str
version: int

Example: '{"clientId": "uyZEoocpSl4QXYXL", "eventName": "lq2ahIBsp9vBIvht", "payloadQuery": {"OOn2cbGNOyoEIRxc": {}, "biXKd19ktfTjG2gZ": {}, "nHhyr1BNdt9bajdb": {}}, "sessionId": "TBqIQtr5tmr7cWnr", "traceId": "zKbj7zyw2s5lG1TJ", "userId": "MKFARFZ88RfM11XB", "version": 21}'
"""

result, error = query_event_stream_handler(
    body=body,
    end_date=end_date,
    offset=offset,
    page_size=page_size,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
