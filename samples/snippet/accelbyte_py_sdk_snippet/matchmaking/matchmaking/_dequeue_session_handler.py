import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import dequeue_session_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsDequeueRequest
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsDequeueRequest
match_id: str

Example: '{"match_id": "7c2SAKsJMdNV5qMU"}'
"""

result, error = dequeue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
