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

Example: '{"attributes": {"5zOevMrCLu7Xw14n": {}, "mG8NbGvvGSh1H9Jg": {}, "854vtjnBvmp0RF6h": {}}, "latencies": {"KTGvVnSjXkUZs44i": 78, "SoIpByUGQKD2Pd03": 90, "JRVayWf5DKpXchbL": 45}, "matchPool": "eFaIbdpdGJdJ2lY7", "sessionID": "SSmJkezCvWKS2uGV"}'
"""

result, error = create_match_ticket(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
