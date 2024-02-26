import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_claim_by_keys
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimByKeysReq
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetClaimByKeysReq
claim_keys: List[str]
regions: List[str]
session_id: str

Example: '{"claimKeys": ["EqBv2RD2Ro6lIk87", "fjbrSX8xDKgwvs9y", "sOIZp0qpdO7tgzZC"], "regions": ["NU6gRb9lWIYTKCF6", "lDOi0funAgDM25hD", "y53Rfu3scz9SGQEB"], "sessionId": "7Bf7FW6DQNmI27bN"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
