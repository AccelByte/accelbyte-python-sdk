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

Example: '{"claimKeys": ["cSs1SaxmvA9GtEwv", "Aw3iyfUpxv69BLVB", "rj2DNHFEHIQvMZ5Q"], "regions": ["T4qEFNOfU2IbVFxZ", "rvvJBOQSSbpa4OiR", "FzLs8KfwT8DfpoyD"], "sessionId": "B6aI6u391HqMDS1L"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
