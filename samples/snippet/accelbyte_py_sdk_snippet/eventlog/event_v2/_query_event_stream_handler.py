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

Example: '{"clientId": "S8xEQL7v98xrEOmA", "eventName": "gvMRp49axEjVNmHz", "payloadQuery": {"ih8lKdvSrFmndNAu": {}, "d4Ag9ONXFxYAb9sq": {}, "uJSMzdsx5C1EEhi0": {}}, "sessionId": "NUse6tzJBQ2Dz2Vx", "traceId": "s8bCPKeWfADV89yT", "userId": "GQ33XxW2eCc9Vu1L", "version": 12}'
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
