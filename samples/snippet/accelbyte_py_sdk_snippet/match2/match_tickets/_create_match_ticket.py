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

Example: '{"attributes": {"vX2NSYTDXCgOAUNr": {}, "VraqBAN3i4jXtqWR": {}, "fvm8FcVQZSh7p7mB": {}}, "latencies": {"eMNvT2BrRLRD5QVt": 9, "Z80D0UNGUBVebZM1": 36, "6NUBPBptCBteaYIi": 12}, "matchPool": "Ehc4fU9YtaERskAC", "sessionID": "ipKBGNn771YuWZGe"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
