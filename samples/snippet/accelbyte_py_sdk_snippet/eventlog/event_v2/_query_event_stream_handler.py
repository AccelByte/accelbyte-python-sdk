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

Example: '{"clientId": "pYnii1Gn2EkthZ8x", "eventName": "xbfL69lBnM7VTxQ8", "payloadQuery": {"sE1cQlVqWez1Ilpb": {}, "dGlJsg8m7UMHraTw": {}, "WoEQwMurjCFE0GEn": {}}, "sessionId": "E98L0i7ELOy3Qtt6", "traceId": "9qQji77fVvOl9GRp", "userId": "dnq6wguefG5l2WlB", "version": 25}'
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
