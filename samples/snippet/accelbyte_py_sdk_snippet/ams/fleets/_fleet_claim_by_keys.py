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

Example: '{"claimKeys": ["aMcDM47XkX9e7pIM", "cd76VN3tEnwgn880", "zLQqlgdemfZCOD3u"], "regions": ["TVxaz1jIzIaXuv5N", "EV3B37Hh5qVC6RuU", "u0dkGNWnGYUJzo74"], "sessionId": "fY6KG5GwPNM0GHQl"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
