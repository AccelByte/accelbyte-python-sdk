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

Example: '{"claimKeys": ["Zl7aXmk0RlrL3yU0", "IPC1EWNaWUPxjg61", "0Th2XUtfOqTE8rSM"], "regions": ["7p6plZUVWmcy3MMR", "JLNsycAVtYUlGzKJ", "tkmNn9eR3um7HsF0"], "sessionId": "FVM1PgRXHXBdDgeU"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
