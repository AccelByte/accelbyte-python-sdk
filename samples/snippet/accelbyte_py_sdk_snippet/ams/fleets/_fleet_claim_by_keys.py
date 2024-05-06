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

Example: '{"claimKeys": ["toB6wVIMXICWNswf", "3dlBm569jZzzpRmD", "dIXyad9TPowxCsxh"], "regions": ["Nwi60zMbboB8IrXj", "xG1R9cEETfkkmOWp", "ONgAlMmpsIyOcF8d"], "sessionId": "Ao6GbLQ6porMycJ2"}'
"""

result, error = fleet_claim_by_keys(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
