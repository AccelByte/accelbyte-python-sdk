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

Example: '{"clientId": "YXDBECb5GZ4RBMIz", "eventName": "YvwB3OhB4wRtsRa0", "payloadQuery": {"gd9SwNdBlVys6rZy": {}, "xAPDpAi3ohVHndPO": {}, "kTUajcbZ0RH1g0Gu": {}}, "sessionId": "eIv5lH0ZhjxP9Rkl", "traceId": "xmYK1eu4ZwxgEr9y", "userId": "kqu9BvR9JQ8dwt6S", "version": 75}'
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
