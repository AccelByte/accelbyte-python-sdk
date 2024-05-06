import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import create_match_ticket
from accelbyte_py_sdk.api.match2.models import ApiMatchTicketRequest
from accelbyte_py_sdk.api.match2.models import ApiMatchTicketResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiMatchTicketRequest
attributes: Dict[str, Any]
latencies: Dict[str, int]
match_pool: str
session_id: str

Example: '{"attributes": {"rpgABpyiT6iZfsaA": {}, "CqnqaCVrqLqUqq82": {}, "fY1HLymPnP10dpWt": {}}, "latencies": {"5E5AOv2kO8bS2P4S": 98, "AmFuYpWwMHhuiqIj": 54, "1nWjgYrB8eV0Vwmd": 72}, "matchPool": "jBftyRDdNrQQuBog", "sessionID": "GK3eHRdj9kAvEpgT"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
