import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import store_match_results
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchResultRequest
match_id: str
players: List[ModelsPlayerResultRequest]
Definition: List[ModelsPlayerResultRequest]
    results: List[ModelsResultAttributeRequest]
    Definition: List[ModelsResultAttributeRequest]
        attribute: str
        value: float
    user_id: str

Example: '{"match_id": "Z6wKeRzrUuOFu3va", "players": [{"results": [{"attribute": "7Mh0SUmovAfE0aO5", "value": 0.4563818323375185}, {"attribute": "u3xDNdG2Gv6bIkNl", "value": 0.7815970652648703}, {"attribute": "uGg24ay0pFnZ0ZQ1", "value": 0.5862525507005967}], "user_id": "rdY4ziV4VoXuxopE"}, {"results": [{"attribute": "3ZtdJPetueOgv5QK", "value": 0.14582838315902868}, {"attribute": "7yXWrzeeHlciiUP5", "value": 0.26678835815315893}, {"attribute": "Ic36UW2HyWt4w5uz", "value": 0.7558712999460544}], "user_id": "6m4vrti6LHrFAc5c"}, {"results": [{"attribute": "zhBwgQJo80epM6HU", "value": 0.31524717797304735}, {"attribute": "Y5kdA6XMlWCDUcun", "value": 0.15775858207092497}, {"attribute": "v4a5yMQL6nJJiNQa", "value": 0.9500016726725816}], "user_id": "9aECwjObwb6pBZgS"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
