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

Example: '{"attributes": {"edLG4kQpmVP8Arrf": {}, "E6Yb0ZiFlfKwTFHU": {}, "6JmyHX9ZweJk959o": {}}, "latencies": {"NNsonoM3XExAl3Aq": 96, "FSbcKoV1hxICXsaO": 35, "FhbYC8Vs0Hfv0NyZ": 30}, "matchPool": "XhfT5advFwiQeyVF", "sessionID": "NWfnMP5qz9k1IBHz"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
