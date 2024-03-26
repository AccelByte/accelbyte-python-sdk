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

Example: '{"clientId": "VAnbI1Jx8sQVnfND", "eventName": "cQvgRxNCwmqJ4QFi", "payloadQuery": {"M1C40J4bIq46AOKp": {}, "EDdxtVtYDwCv5dt7": {}, "vzP1wkci8xXCIeYj": {}}, "sessionId": "VUCu9shx7Opbfs4T", "traceId": "iBGJ8uGRd34NPx2L", "userId": "bY4j7qUR7XAmlYxU", "version": 39}'
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
