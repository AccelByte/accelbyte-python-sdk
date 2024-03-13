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

Example: '{"attributes": {"VbXHxDTxDghsJBpt": {}, "lPI0yRlOcdHuaLM7": {}, "8wwcINc932HEa7i3": {}}, "latencies": {"TbwlPdLrzWksUH9f": 51, "MbK1Lv133OSuOMAY": 8, "7H9LbwNHmo8kLuO1": 80}, "matchPool": "CrbJnpSf46e60BI2", "sessionID": "UWCX4kYfGUS15esT"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
