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

Example: '{"attributes": {"8N3EQeNuAlZXU60z": {}, "Siwqn4CdFUsZMwJm": {}, "J0qFJwNdMlu59hh3": {}}, "latencies": {"jq8PzRK7yH4JZLJl": 45, "iCGb1u3YIAExwQZe": 71, "ORDTYV5RiESJITDp": 87}, "matchPool": "uBuUQ0MVFhskYd0V", "sessionID": "0q1Oix994LjGumRp"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
